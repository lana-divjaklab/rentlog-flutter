import 'package:rentlog/core/convex/convex_client.dart';
import 'package:rentlog/features/landlord/data/landlord_models.dart';

/// What the landlord types for one utility row before saving the month.
/// Mirrors the entries `utilities.generateForLeaseMonth` accepts.
class UtilityEntry {
  const UtilityEntry({
    required this.categoryId,
    this.tenantUsage,
    this.manualAmountCents,
  });

  final String categoryId;
  final double? tenantUsage;
  final int? manualAmountCents;

  Map<String, Object?> toArgs() => {
    'categoryId': categoryId,
    'tenantUsage': tenantUsage,
    'manualAmountCents': manualAmountCents,
  };
}

/// Every call is scoped to one organisation, as `requireLandlord` requires.
class LandlordRepository {
  LandlordRepository(this._convex);

  final ConvexClient _convex;

  Future<DashboardOverview> dashboard(String organizationId) async =>
      DashboardOverview.fromJson(
        convexMap(
          await _convex.query('dashboard:dashboardOverview', {
            'organizationId': organizationId,
          }),
        ),
      );

  Future<List<LeaseSummary>> leases(String organizationId) async => convexList(
    await _convex.query('leases:list', {'organizationId': organizationId}),
  ).map(LeaseSummary.fromJson).toList();

  Future<List<PropertyItem>> properties(String organizationId) async =>
      convexList(
        await _convex.query('properties:list', {
          'organizationId': organizationId,
        }),
      ).map(PropertyItem.fromJson).toList();

  Future<BillingInfo> billing(String organizationId) async =>
      BillingInfo.fromJson(
        convexMap(
          await _convex.query('billing:getBilling', {
            'organizationId': organizationId,
          }),
        ),
      );

  Future<LeaseYear> leaseYear({
    required String organizationId,
    required String leaseId,
    required int year,
  }) async => LeaseYear.fromJson(
    convexMap(
      await _convex.query('charges:leaseYearOverview', {
        'organizationId': organizationId,
        'leaseId': leaseId,
        'year': year,
      }),
    ),
  );

  // --- Rent ----------------------------------------------------------------

  /// Creates the month's rent charge if needed; with [paidAt], marks it paid.
  Future<void> saveRent({
    required String organizationId,
    required String leaseId,
    required String periodMonth,
    required int amountCents,
    String? paidAt,
  }) => _convex.mutation('charges:upsertRentForMonth', {
    'organizationId': organizationId,
    'leaseId': leaseId,
    'periodMonth': periodMonth,
    'amountCents': amountCents,
    'paidAt': paidAt,
  });

  Future<void> markChargeUnpaid({
    required String organizationId,
    required String chargeId,
  }) => _convex.mutation('charges:markUnpaid', {
    'organizationId': organizationId,
    'chargeId': chargeId,
  });

  // --- Utilities -----------------------------------------------------------

  Future<void> saveUtilities({
    required String organizationId,
    required String leaseId,
    required String periodMonth,
    required List<UtilityEntry> entries,
    bool publish = false,
  }) => _convex.mutation('utilities:generateForLeaseMonth', {
    'organizationId': organizationId,
    'leaseId': leaseId,
    'consumptionMonth': periodMonth,
    'entries': entries.map((e) => e.toArgs()).toList(),
    'publish': publish,
  });

  /// Makes the whole month (rent included) visible to the tenant. Utilities
  /// seen for the first time trigger the tenant's push notification.
  Future<void> publishMonth({
    required String organizationId,
    required String leaseId,
    required String periodMonth,
  }) => _convex.mutation('utilities:publishLeaseMonth', {
    'organizationId': organizationId,
    'leaseId': leaseId,
    'periodMonth': periodMonth,
  });

  /// [paidCents] is what the tenant actually transferred; any difference
  /// from what was owed carries into the next month.
  Future<void> markUtilitiesPaid({
    required String organizationId,
    required String leaseId,
    required String periodMonth,
    required String paidAt,
    required int paidCents,
  }) => _convex.mutation('charges:markPeriodPaid', {
    'organizationId': organizationId,
    'leaseId': leaseId,
    'periodMonth': periodMonth,
    'paidAt': paidAt,
    'type': 'utility',
    'paidAmountCents': paidCents,
  });

  Future<void> markUtilitiesUnpaid({
    required String organizationId,
    required String leaseId,
    required String periodMonth,
  }) => _convex.mutation('charges:markPeriodUnpaid', {
    'organizationId': organizationId,
    'leaseId': leaseId,
    'periodMonth': periodMonth,
    'type': 'utility',
  });
}
