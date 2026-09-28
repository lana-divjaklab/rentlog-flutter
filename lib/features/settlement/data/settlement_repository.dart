import 'package:rentlog/core/convex/convex_client.dart';
import 'package:rentlog/features/settlement/data/settlement_models.dart';

/// The property-level half of the monthly routine: meter readings and bill
/// totals. The per-lease half (calculate, publish) is LandlordRepository.
class SettlementRepository {
  SettlementRepository(this._convex);

  final ConvexClient _convex;

  Future<PropertyMeters> meters({
    required String organizationId,
    required String propertyId,
    required String fromMonth,
    required String toMonth,
  }) async => PropertyMeters.fromJson(
    convexMap(
      await _convex.query('meters:listForProperty', {
        'organizationId': organizationId,
        'propertyId': propertyId,
        'fromMonth': fromMonth,
        'toMonth': toMonth,
      }),
    ),
  );

  Future<void> saveReading({
    required String organizationId,
    required String propertyId,
    required String categoryId,
    required String month,
    required ReadingScope scope,
    String? leaseId,
    required double reading,
  }) => _convex.mutation('meters:upsertReading', {
    'organizationId': organizationId,
    'propertyId': propertyId,
    'categoryId': categoryId,
    'consumptionMonth': month,
    'scope': scope.name,
    'leaseId': leaseId,
    'reading': reading,
  });

  /// Carries a metered utility's usage into its bill and every tenant's
  /// charge. Needs this month's and last month's main-meter readings.
  Future<void> applyMetersToBilling({
    required String organizationId,
    required String propertyId,
    required String categoryId,
    required String month,
  }) => _convex.mutation('meters:applyToBilling', {
    'organizationId': organizationId,
    'propertyId': propertyId,
    'categoryId': categoryId,
    'consumptionMonth': month,
  });

  Future<void> saveBill({
    required String organizationId,
    required String propertyId,
    required String categoryId,
    required String month,
    required int totalCents,
    double? totalUsage,
  }) => _convex.mutation('utilities:upsertBill', {
    'organizationId': organizationId,
    'propertyId': propertyId,
    'categoryId': categoryId,
    'consumptionMonth': month,
    'totalBillAmountCents': totalCents,
    'totalUsage': totalUsage,
  });
}
