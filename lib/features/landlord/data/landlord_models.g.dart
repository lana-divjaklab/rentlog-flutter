// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'landlord_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DashboardOverview _$DashboardOverviewFromJson(Map<String, dynamic> json) =>
    _DashboardOverview(
      month: json['month'] as String,
      year: (json['year'] as num).toInt(),
      money: DashboardMoney.fromJson(json['money'] as Map<String, dynamic>),
      attention: (json['attention'] as List<dynamic>)
          .map((e) => AttentionItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      leases: (json['leases'] as List<dynamic>)
          .map((e) => DashboardLease.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DashboardOverviewToJson(_DashboardOverview instance) =>
    <String, dynamic>{
      'month': instance.month,
      'year': instance.year,
      'money': instance.money.toJson(),
      'attention': instance.attention.map((e) => e.toJson()).toList(),
      'leases': instance.leases.map((e) => e.toJson()).toList(),
    };

_DashboardMoney _$DashboardMoneyFromJson(Map<String, dynamic> json) =>
    _DashboardMoney(
      rentCollectedThisMonthCents: (json['rentCollectedThisMonthCents'] as num)
          .toInt(),
      utilitiesCollectedThisMonthCents:
          (json['utilitiesCollectedThisMonthCents'] as num).toInt(),
      rentCollectedYearCents: (json['rentCollectedYearCents'] as num).toInt(),
      utilitiesCollectedYearCents: (json['utilitiesCollectedYearCents'] as num)
          .toInt(),
      overdueAmountCents: (json['overdueAmountCents'] as num).toInt(),
      overdueCount: (json['overdueCount'] as num).toInt(),
      dueAmountCents: (json['dueAmountCents'] as num).toInt(),
      dueCount: (json['dueCount'] as num).toInt(),
      expectedMonthlyRentCents: (json['expectedMonthlyRentCents'] as num)
          .toInt(),
    );

Map<String, dynamic> _$DashboardMoneyToJson(
  _DashboardMoney instance,
) => <String, dynamic>{
  'rentCollectedThisMonthCents': instance.rentCollectedThisMonthCents,
  'utilitiesCollectedThisMonthCents': instance.utilitiesCollectedThisMonthCents,
  'rentCollectedYearCents': instance.rentCollectedYearCents,
  'utilitiesCollectedYearCents': instance.utilitiesCollectedYearCents,
  'overdueAmountCents': instance.overdueAmountCents,
  'overdueCount': instance.overdueCount,
  'dueAmountCents': instance.dueAmountCents,
  'dueCount': instance.dueCount,
  'expectedMonthlyRentCents': instance.expectedMonthlyRentCents,
};

_AttentionItem _$AttentionItemFromJson(Map<String, dynamic> json) =>
    _AttentionItem(
      chargeId: json['chargeId'] as String,
      leaseId: json['leaseId'] as String,
      tenantName: json['tenantName'] as String,
      description: json['description'] as String,
      amountCents: (json['amountCents'] as num).toInt(),
      dueDate: json['dueDate'] as String,
      status: $enumDecode(_$ChargeStatusEnumMap, json['status']),
      type: $enumDecode(_$ChargeTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$AttentionItemToJson(_AttentionItem instance) =>
    <String, dynamic>{
      'chargeId': instance.chargeId,
      'leaseId': instance.leaseId,
      'tenantName': instance.tenantName,
      'description': instance.description,
      'amountCents': instance.amountCents,
      'dueDate': instance.dueDate,
      'status': _$ChargeStatusEnumMap[instance.status]!,
      'type': _$ChargeTypeEnumMap[instance.type]!,
    };

const _$ChargeStatusEnumMap = {
  ChargeStatus.due: 'due',
  ChargeStatus.paid: 'paid',
  ChargeStatus.overdue: 'overdue',
};

const _$ChargeTypeEnumMap = {
  ChargeType.rent: 'rent',
  ChargeType.utility: 'utility',
};

_DashboardLease _$DashboardLeaseFromJson(Map<String, dynamic> json) =>
    _DashboardLease(
      leaseId: json['leaseId'] as String,
      tenantName: json['tenantName'] as String,
      propertyName: json['propertyName'] as String,
      unitName: json['unitName'] as String,
      rentAmountCents: (json['rentAmountCents'] as num).toInt(),
      overdueCount: (json['overdueCount'] as num).toInt(),
      overdueAmountCents: (json['overdueAmountCents'] as num).toInt(),
    );

Map<String, dynamic> _$DashboardLeaseToJson(_DashboardLease instance) =>
    <String, dynamic>{
      'leaseId': instance.leaseId,
      'tenantName': instance.tenantName,
      'propertyName': instance.propertyName,
      'unitName': instance.unitName,
      'rentAmountCents': instance.rentAmountCents,
      'overdueCount': instance.overdueCount,
      'overdueAmountCents': instance.overdueAmountCents,
    };

_LeaseSummary _$LeaseSummaryFromJson(Map<String, dynamic> json) =>
    _LeaseSummary(
      id: json['_id'] as String,
      unitName: json['unitName'] as String,
      propertyName: json['propertyName'] as String,
      tenantName: json['tenantName'] as String,
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String?,
      status: $enumDecode(_$LeaseStatusEnumMap, json['status']),
      rentAmountCents: (json['rentAmountCents'] as num).toInt(),
      unpaidTotalCents: (json['unpaidTotalCents'] as num).toInt(),
      overdueCount: (json['overdueCount'] as num).toInt(),
    );

Map<String, dynamic> _$LeaseSummaryToJson(_LeaseSummary instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'unitName': instance.unitName,
      'propertyName': instance.propertyName,
      'tenantName': instance.tenantName,
      'startDate': instance.startDate,
      'endDate': ?instance.endDate,
      'status': _$LeaseStatusEnumMap[instance.status]!,
      'rentAmountCents': instance.rentAmountCents,
      'unpaidTotalCents': instance.unpaidTotalCents,
      'overdueCount': instance.overdueCount,
    };

const _$LeaseStatusEnumMap = {
  LeaseStatus.draft: 'draft',
  LeaseStatus.active: 'active',
  LeaseStatus.ended: 'ended',
};

_PropertyItem _$PropertyItemFromJson(Map<String, dynamic> json) =>
    _PropertyItem(
      id: json['_id'] as String,
      name: json['name'] as String,
      address: json['address'] as String,
      notes: json['notes'] as String?,
      units: (json['units'] as List<dynamic>)
          .map((e) => UnitItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PropertyItemToJson(_PropertyItem instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'notes': ?instance.notes,
      'units': instance.units.map((e) => e.toJson()).toList(),
    };

_UnitItem _$UnitItemFromJson(Map<String, dynamic> json) => _UnitItem(
  id: json['_id'] as String,
  name: json['name'] as String,
  floor: json['floor'] as String?,
  isOwnerOccupied: json['isOwnerOccupied'] as bool?,
);

Map<String, dynamic> _$UnitItemToJson(_UnitItem instance) => <String, dynamic>{
  '_id': instance.id,
  'name': instance.name,
  'floor': ?instance.floor,
  'isOwnerOccupied': ?instance.isOwnerOccupied,
};

_LeaseYear _$LeaseYearFromJson(Map<String, dynamic> json) => _LeaseYear(
  rentDefaultCents: (json['rentDefaultCents'] as num).toInt(),
  rentDueDay: (json['rentDueDay'] as num).toInt(),
  months: (json['months'] as List<dynamic>)
      .map((e) => LeaseMonth.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$LeaseYearToJson(_LeaseYear instance) =>
    <String, dynamic>{
      'rentDefaultCents': instance.rentDefaultCents,
      'rentDueDay': instance.rentDueDay,
      'months': instance.months.map((e) => e.toJson()).toList(),
    };

_LeaseMonth _$LeaseMonthFromJson(Map<String, dynamic> json) => _LeaseMonth(
  month: json['month'] as String,
  utilityBalance: UtilityBalance.fromJson(
    json['utilityBalance'] as Map<String, dynamic>,
  ),
  rent: RentRow.fromJson(json['rent'] as Map<String, dynamic>),
  utilities: (json['utilities'] as List<dynamic>)
      .map((e) => UtilityRow.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$LeaseMonthToJson(_LeaseMonth instance) =>
    <String, dynamic>{
      'month': instance.month,
      'utilityBalance': instance.utilityBalance.toJson(),
      'rent': instance.rent.toJson(),
      'utilities': instance.utilities.map((e) => e.toJson()).toList(),
    };

_UtilityBalance _$UtilityBalanceFromJson(Map<String, dynamic> json) =>
    _UtilityBalance(
      grossCents: (json['grossCents'] as num).toInt(),
      openingBalanceCents: (json['openingBalanceCents'] as num).toInt(),
      appliedCreditCents: (json['appliedCreditCents'] as num).toInt(),
      netCents: (json['netCents'] as num).toInt(),
      paidCents: (json['paidCents'] as num?)?.toInt(),
      closingBalanceCents: (json['closingBalanceCents'] as num).toInt(),
    );

Map<String, dynamic> _$UtilityBalanceToJson(_UtilityBalance instance) =>
    <String, dynamic>{
      'grossCents': instance.grossCents,
      'openingBalanceCents': instance.openingBalanceCents,
      'appliedCreditCents': instance.appliedCreditCents,
      'netCents': instance.netCents,
      'paidCents': ?instance.paidCents,
      'closingBalanceCents': instance.closingBalanceCents,
    };

_RentRow _$RentRowFromJson(Map<String, dynamic> json) => _RentRow(
  chargeId: json['chargeId'] as String?,
  amountCents: (json['amountCents'] as num).toInt(),
  dueDate: json['dueDate'] as String,
  status: $enumDecodeNullable(_$ChargeStatusEnumMap, json['status']),
  paidAt: json['paidAt'] as String?,
  publishedAt: (json['publishedAt'] as num?)?.toInt(),
);

Map<String, dynamic> _$RentRowToJson(_RentRow instance) => <String, dynamic>{
  'chargeId': ?instance.chargeId,
  'amountCents': instance.amountCents,
  'dueDate': instance.dueDate,
  'status': ?_$ChargeStatusEnumMap[instance.status],
  'paidAt': ?instance.paidAt,
  'publishedAt': ?instance.publishedAt,
};

_UtilityRow _$UtilityRowFromJson(Map<String, dynamic> json) => _UtilityRow(
  categoryId: json['categoryId'] as String,
  categoryName: json['categoryName'] as String,
  unit: json['unit'] as String,
  usesMeter: json['usesMeter'] as bool,
  allocationType: $enumDecode(_$AllocationTypeEnumMap, json['allocationType']),
  ruleFixedAmountCents: (json['ruleFixedAmountCents'] as num?)?.toInt(),
  rulePercentage: (json['rulePercentage'] as num?)?.toDouble(),
  ruleDeductionCents: (json['ruleDeductionCents'] as num?)?.toInt(),
  totalBillCents: (json['totalBillCents'] as num?)?.toInt(),
  totalUsage: (json['totalUsage'] as num?)?.toDouble(),
  meterReading: (json['meterReading'] as num?)?.toDouble(),
  previousMeterReading: (json['previousMeterReading'] as num?)?.toDouble(),
  tenantUsage: (json['tenantUsage'] as num?)?.toDouble(),
  tenantMeterReading: (json['tenantMeterReading'] as num?)?.toDouble(),
  previousTenantMeterReading: (json['previousTenantMeterReading'] as num?)
      ?.toDouble(),
  amountCents: (json['amountCents'] as num?)?.toInt(),
  chargeId: json['chargeId'] as String?,
  dueDate: json['dueDate'] as String,
  status: $enumDecodeNullable(_$ChargeStatusEnumMap, json['status']),
  paidAt: json['paidAt'] as String?,
  publishedAt: (json['publishedAt'] as num?)?.toInt(),
);

Map<String, dynamic> _$UtilityRowToJson(_UtilityRow instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'categoryName': instance.categoryName,
      'unit': instance.unit,
      'usesMeter': instance.usesMeter,
      'allocationType': _$AllocationTypeEnumMap[instance.allocationType]!,
      'ruleFixedAmountCents': ?instance.ruleFixedAmountCents,
      'rulePercentage': ?instance.rulePercentage,
      'ruleDeductionCents': ?instance.ruleDeductionCents,
      'totalBillCents': ?instance.totalBillCents,
      'totalUsage': ?instance.totalUsage,
      'meterReading': ?instance.meterReading,
      'previousMeterReading': ?instance.previousMeterReading,
      'tenantUsage': ?instance.tenantUsage,
      'tenantMeterReading': ?instance.tenantMeterReading,
      'previousTenantMeterReading': ?instance.previousTenantMeterReading,
      'amountCents': ?instance.amountCents,
      'chargeId': ?instance.chargeId,
      'dueDate': instance.dueDate,
      'status': ?_$ChargeStatusEnumMap[instance.status],
      'paidAt': ?instance.paidAt,
      'publishedAt': ?instance.publishedAt,
    };

const _$AllocationTypeEnumMap = {
  AllocationType.fixed: 'fixed',
  AllocationType.consumption: 'consumption',
  AllocationType.percentage: 'percentage',
  AllocationType.billMinusFixed: 'billMinusFixed',
  AllocationType.manual: 'manual',
};

_BillingInfo _$BillingInfoFromJson(Map<String, dynamic> json) => _BillingInfo(
  plan: $enumDecode(_$PlanEnumMap, json['plan']),
  subscriptionStatus: json['subscriptionStatus'] as String?,
  currentPeriodEnd: (json['currentPeriodEnd'] as num?)?.toInt(),
  legacyFullAccess: json['legacyFullAccess'] as bool,
  propertyCount: (json['propertyCount'] as num).toInt(),
  leaseCount: (json['leaseCount'] as num).toInt(),
  limits: PlanLimits.fromJson(json['limits'] as Map<String, dynamic>),
);

Map<String, dynamic> _$BillingInfoToJson(_BillingInfo instance) =>
    <String, dynamic>{
      'plan': _$PlanEnumMap[instance.plan]!,
      'subscriptionStatus': ?instance.subscriptionStatus,
      'currentPeriodEnd': ?instance.currentPeriodEnd,
      'legacyFullAccess': instance.legacyFullAccess,
      'propertyCount': instance.propertyCount,
      'leaseCount': instance.leaseCount,
      'limits': instance.limits.toJson(),
    };

const _$PlanEnumMap = {
  Plan.free: 'free',
  Plan.pro: 'pro',
  Plan.business: 'business',
};

_PlanLimits _$PlanLimitsFromJson(Map<String, dynamic> json) => _PlanLimits(
  maxProperties: (json['maxProperties'] as num).toInt(),
  maxLeases: (json['maxLeases'] as num).toInt(),
);

Map<String, dynamic> _$PlanLimitsToJson(_PlanLimits instance) =>
    <String, dynamic>{
      'maxProperties': instance.maxProperties,
      'maxLeases': instance.maxLeases,
    };
