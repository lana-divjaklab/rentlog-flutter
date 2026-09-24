import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rentlog/core/models/charge_breakdown.dart';
import 'package:rentlog/core/models/converters.dart';
import 'package:rentlog/core/models/enums.dart';

part 'tenant_models.freezed.dart';
part 'tenant_models.g.dart';

/// `dashboard.tenantOverview`: the tenant portal's whole data set.
@freezed
abstract class TenantOverview with _$TenantOverview {
  const factory TenantOverview({
    required String leaseId,
    required String tenantName,
    required String leaseStart,
    required int rentAmountCents,
    int? depositAmountCents,
    required int utilityDueOffsetMonths,
    @UtilityDueDayConverter() required Object utilityDueDay,
    required List<TenantMonth> months,
  }) = _TenantOverview;

  factory TenantOverview.fromJson(Map<String, dynamic> json) =>
      _$TenantOverviewFromJson(json);
}

@freezed
abstract class TenantMonth with _$TenantMonth {
  const factory TenantMonth({
    required String month,
    required int totalCents,

    /// Rounding carried in from earlier utilities: positive = credit.
    required int utilityCreditCents,
    required int payableCents,
    TenantCharge? rent,
    required List<TenantCharge> utilities,
  }) = _TenantMonth;

  factory TenantMonth.fromJson(Map<String, dynamic> json) =>
      _$TenantMonthFromJson(json);
}

@freezed
abstract class TenantCharge with _$TenantCharge {
  const factory TenantCharge({
    @JsonKey(name: '_id') required String id,
    required String description,
    required int amountCents,
    required String dueDate,
    String? paidAt,
    required String periodMonth,
    required ChargeStatus status,
    required ChargeType type,
    ChargeBreakdown? breakdown,
  }) = _TenantCharge;

  factory TenantCharge.fromJson(Map<String, dynamic> json) =>
      _$TenantChargeFromJson(json);
}

/// `leaseInvites.myLeases`.
@freezed
abstract class TenantLease with _$TenantLease {
  const factory TenantLease({
    required String leaseId,
    required String tenantName,
    required String propertyName,
    required String unitName,
    required LeaseStatus status,
  }) = _TenantLease;

  factory TenantLease.fromJson(Map<String, dynamic> json) =>
      _$TenantLeaseFromJson(json);
}

/// `leaseDocuments.listForTenant`.
@freezed
abstract class TenantDocument with _$TenantDocument {
  const factory TenantDocument({
    @JsonKey(name: '_id') required String id,
    required String title,
    required int createdAt,
    required bool available,
    String? utilityBillEntryId,
  }) = _TenantDocument;

  factory TenantDocument.fromJson(Map<String, dynamic> json) =>
      _$TenantDocumentFromJson(json);
}

/// `meters.listForTenantLease`.
@freezed
abstract class TenantMeters with _$TenantMeters {
  const factory TenantMeters({
    required List<MeterCategory> categories,
    required List<MeterReading> readings,
  }) = _TenantMeters;

  factory TenantMeters.fromJson(Map<String, dynamic> json) =>
      _$TenantMetersFromJson(json);
}

@freezed
abstract class MeterCategory with _$MeterCategory {
  const factory MeterCategory({
    @JsonKey(name: '_id') required String id,
    required String name,
    required String unit,
  }) = _MeterCategory;

  factory MeterCategory.fromJson(Map<String, dynamic> json) =>
      _$MeterCategoryFromJson(json);
}

@freezed
abstract class MeterReading with _$MeterReading {
  const factory MeterReading({
    required String categoryId,
    required String consumptionMonth,
    required double reading,
    double? previousReading,
    double? calculatedUsage,
  }) = _MeterReading;

  factory MeterReading.fromJson(Map<String, dynamic> json) =>
      _$MeterReadingFromJson(json);
}
