import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rentlog/core/models/enums.dart';

part 'landlord_models.freezed.dart';
part 'landlord_models.g.dart';

// --- dashboard.dashboardOverview ------------------------------------------

@freezed
abstract class DashboardOverview with _$DashboardOverview {
  const factory DashboardOverview({
    required String month,
    required int year,
    required DashboardMoney money,
    required List<AttentionItem> attention,
    required List<DashboardLease> leases,
  }) = _DashboardOverview;

  factory DashboardOverview.fromJson(Map<String, dynamic> json) =>
      _$DashboardOverviewFromJson(json);
}

@freezed
abstract class DashboardMoney with _$DashboardMoney {
  const factory DashboardMoney({
    required int rentCollectedThisMonthCents,
    required int utilitiesCollectedThisMonthCents,
    required int rentCollectedYearCents,
    required int utilitiesCollectedYearCents,
    required int overdueAmountCents,
    required int overdueCount,
    required int dueAmountCents,
    required int dueCount,
    required int expectedMonthlyRentCents,
  }) = _DashboardMoney;

  factory DashboardMoney.fromJson(Map<String, dynamic> json) =>
      _$DashboardMoneyFromJson(json);
}

@freezed
abstract class AttentionItem with _$AttentionItem {
  const factory AttentionItem({
    required String chargeId,
    required String leaseId,
    required String tenantName,
    required String description,
    required int amountCents,
    required String dueDate,
    required ChargeStatus status,
    required ChargeType type,
  }) = _AttentionItem;

  factory AttentionItem.fromJson(Map<String, dynamic> json) =>
      _$AttentionItemFromJson(json);
}

@freezed
abstract class DashboardLease with _$DashboardLease {
  const factory DashboardLease({
    required String leaseId,
    required String tenantName,
    required String propertyName,
    required String unitName,
    required int rentAmountCents,
    required int overdueCount,
    required int overdueAmountCents,
  }) = _DashboardLease;

  factory DashboardLease.fromJson(Map<String, dynamic> json) =>
      _$DashboardLeaseFromJson(json);
}

// --- leases.list ----------------------------------------------------------

/// The fields of `leases.list` the app shows; the rest are ignored.
@freezed
abstract class LeaseSummary with _$LeaseSummary {
  const factory LeaseSummary({
    @JsonKey(name: '_id') required String id,
    required String unitName,
    required String propertyName,
    required String tenantName,
    required String startDate,
    String? endDate,
    required LeaseStatus status,
    required int rentAmountCents,
    required int unpaidTotalCents,
    required int overdueCount,
  }) = _LeaseSummary;

  factory LeaseSummary.fromJson(Map<String, dynamic> json) =>
      _$LeaseSummaryFromJson(json);
}

// --- properties.list ------------------------------------------------------

@freezed
abstract class PropertyItem with _$PropertyItem {
  const factory PropertyItem({
    @JsonKey(name: '_id') required String id,
    required String name,
    required String address,
    String? notes,
    required List<UnitItem> units,
  }) = _PropertyItem;

  factory PropertyItem.fromJson(Map<String, dynamic> json) =>
      _$PropertyItemFromJson(json);
}

@freezed
abstract class UnitItem with _$UnitItem {
  const factory UnitItem({
    @JsonKey(name: '_id') required String id,
    required String name,
    String? floor,
    bool? isOwnerOccupied,
  }) = _UnitItem;

  factory UnitItem.fromJson(Map<String, dynamic> json) =>
      _$UnitItemFromJson(json);
}

// --- charges.leaseYearOverview --------------------------------------------

@freezed
abstract class LeaseYear with _$LeaseYear {
  const factory LeaseYear({
    required int rentDefaultCents,
    required int rentDueDay,
    required List<LeaseMonth> months,
  }) = _LeaseYear;

  factory LeaseYear.fromJson(Map<String, dynamic> json) =>
      _$LeaseYearFromJson(json);
}

@freezed
abstract class LeaseMonth with _$LeaseMonth {
  const factory LeaseMonth({
    required String month,
    required UtilityBalance utilityBalance,
    required RentRow rent,
    required List<UtilityRow> utilities,
  }) = _LeaseMonth;

  factory LeaseMonth.fromJson(Map<String, dynamic> json) =>
      _$LeaseMonthFromJson(json);
}

/// Carry-over from earlier months (convex/lib/utilityBalance.ts).
/// Positive credit = the tenant overpaid and owes less now.
@freezed
abstract class UtilityBalance with _$UtilityBalance {
  const factory UtilityBalance({
    required int grossCents,
    required int openingBalanceCents,
    required int appliedCreditCents,
    required int netCents,
    int? paidCents,
    required int closingBalanceCents,
  }) = _UtilityBalance;

  factory UtilityBalance.fromJson(Map<String, dynamic> json) =>
      _$UtilityBalanceFromJson(json);
}

/// The month's rent. [chargeId] is null until a charge exists; the amount
/// then falls back to the lease's rent.
@freezed
abstract class RentRow with _$RentRow {
  const factory RentRow({
    String? chargeId,
    required int amountCents,
    required String dueDate,
    ChargeStatus? status,
    String? paidAt,
    int? publishedAt,
  }) = _RentRow;

  factory RentRow.fromJson(Map<String, dynamic> json) =>
      _$RentRowFromJson(json);
}

/// One utility rule's row for a month: the rule, the property bill, and the
/// charge if one was generated.
@freezed
abstract class UtilityRow with _$UtilityRow {
  const factory UtilityRow({
    required String categoryId,
    required String categoryName,
    required String unit,
    required bool usesMeter,
    required AllocationType allocationType,
    int? ruleFixedAmountCents,
    double? rulePercentage,
    int? ruleDeductionCents,
    int? totalBillCents,
    double? totalUsage,
    double? meterReading,
    double? previousMeterReading,
    double? tenantUsage,
    double? tenantMeterReading,
    double? previousTenantMeterReading,
    int? amountCents,
    String? chargeId,
    required String dueDate,
    ChargeStatus? status,
    String? paidAt,
    int? publishedAt,
  }) = _UtilityRow;

  factory UtilityRow.fromJson(Map<String, dynamic> json) =>
      _$UtilityRowFromJson(json);
}

// --- billing.getBilling ---------------------------------------------------

@freezed
abstract class BillingInfo with _$BillingInfo {
  const factory BillingInfo({
    required Plan plan,
    String? subscriptionStatus,
    int? currentPeriodEnd,
    required bool legacyFullAccess,
    required int propertyCount,
    required int leaseCount,
    required PlanLimits limits,
  }) = _BillingInfo;

  factory BillingInfo.fromJson(Map<String, dynamic> json) =>
      _$BillingInfoFromJson(json);
}

/// Negative max means unlimited (convex/lib/plan.ts).
@freezed
abstract class PlanLimits with _$PlanLimits {
  const factory PlanLimits({
    required int maxProperties,
    required int maxLeases,
  }) = _PlanLimits;

  factory PlanLimits.fromJson(Map<String, dynamic> json) =>
      _$PlanLimitsFromJson(json);
}
