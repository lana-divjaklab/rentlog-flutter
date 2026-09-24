import 'package:rentlog/core/convex/convex_client.dart';
import 'package:rentlog/features/tenant/data/tenant_models.dart';

class TenantRepository {
  TenantRepository(this._convex);

  final ConvexClient _convex;

  Future<List<TenantLease>> myLeases() async => convexList(
    await _convex.query('leaseInvites:myLeases'),
  ).map(TenantLease.fromJson).toList();

  /// Without [leaseId] Convex picks the first active lease.
  Future<TenantOverview?> overview({String? leaseId}) async {
    final value = await _convex.query('dashboard:tenantOverview', {
      'leaseId': leaseId,
    });
    return value == null ? null : TenantOverview.fromJson(convexMap(value));
  }

  Future<TenantMeters?> meters(String leaseId) async {
    final value = await _convex.query('meters:listForTenantLease', {
      'leaseId': leaseId,
    });
    return value == null ? null : TenantMeters.fromJson(convexMap(value));
  }

  Future<List<TenantDocument>> documents(String leaseId) async => convexList(
    await _convex.query('leaseDocuments:listForTenant', {'leaseId': leaseId}),
  ).map(TenantDocument.fromJson).toList();

  /// A signed, short-lived storage URL; null when the file has gone.
  Future<String?> documentUrl(String documentId) async {
    final value = await _convex.query('leaseDocuments:tenantDocumentUrl', {
      'documentId': documentId,
    });
    return value is String ? value : null;
  }
}
