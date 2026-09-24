// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenant_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TenantOverview _$TenantOverviewFromJson(Map<String, dynamic> json) =>
    _TenantOverview(
      leaseId: json['leaseId'] as String,
      tenantName: json['tenantName'] as String,
      leaseStart: json['leaseStart'] as String,
      rentAmountCents: (json['rentAmountCents'] as num).toInt(),
      depositAmountCents: (json['depositAmountCents'] as num?)?.toInt(),
      utilityDueOffsetMonths: (json['utilityDueOffsetMonths'] as num).toInt(),
      utilityDueDay: const UtilityDueDayConverter().fromJson(
        json['utilityDueDay'] as Object,
      ),
      months: (json['months'] as List<dynamic>)
          .map((e) => TenantMonth.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TenantOverviewToJson(_TenantOverview instance) =>
    <String, dynamic>{
      'leaseId': instance.leaseId,
      'tenantName': instance.tenantName,
      'leaseStart': instance.leaseStart,
      'rentAmountCents': instance.rentAmountCents,
      'depositAmountCents': ?instance.depositAmountCents,
      'utilityDueOffsetMonths': instance.utilityDueOffsetMonths,
      'utilityDueDay': const UtilityDueDayConverter().toJson(
        instance.utilityDueDay,
      ),
      'months': instance.months.map((e) => e.toJson()).toList(),
    };

_TenantMonth _$TenantMonthFromJson(Map<String, dynamic> json) => _TenantMonth(
  month: json['month'] as String,
  totalCents: (json['totalCents'] as num).toInt(),
  utilityCreditCents: (json['utilityCreditCents'] as num).toInt(),
  payableCents: (json['payableCents'] as num).toInt(),
  rent: json['rent'] == null
      ? null
      : TenantCharge.fromJson(json['rent'] as Map<String, dynamic>),
  utilities: (json['utilities'] as List<dynamic>)
      .map((e) => TenantCharge.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$TenantMonthToJson(_TenantMonth instance) =>
    <String, dynamic>{
      'month': instance.month,
      'totalCents': instance.totalCents,
      'utilityCreditCents': instance.utilityCreditCents,
      'payableCents': instance.payableCents,
      'rent': ?instance.rent?.toJson(),
      'utilities': instance.utilities.map((e) => e.toJson()).toList(),
    };

_TenantCharge _$TenantChargeFromJson(Map<String, dynamic> json) =>
    _TenantCharge(
      id: json['_id'] as String,
      description: json['description'] as String,
      amountCents: (json['amountCents'] as num).toInt(),
      dueDate: json['dueDate'] as String,
      paidAt: json['paidAt'] as String?,
      periodMonth: json['periodMonth'] as String,
      status: $enumDecode(_$ChargeStatusEnumMap, json['status']),
      type: $enumDecode(_$ChargeTypeEnumMap, json['type']),
      breakdown: json['breakdown'] == null
          ? null
          : ChargeBreakdown.fromJson(json['breakdown'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TenantChargeToJson(_TenantCharge instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'description': instance.description,
      'amountCents': instance.amountCents,
      'dueDate': instance.dueDate,
      'paidAt': ?instance.paidAt,
      'periodMonth': instance.periodMonth,
      'status': _$ChargeStatusEnumMap[instance.status]!,
      'type': _$ChargeTypeEnumMap[instance.type]!,
      'breakdown': ?instance.breakdown?.toJson(),
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

_TenantLease _$TenantLeaseFromJson(Map<String, dynamic> json) => _TenantLease(
  leaseId: json['leaseId'] as String,
  tenantName: json['tenantName'] as String,
  propertyName: json['propertyName'] as String,
  unitName: json['unitName'] as String,
  status: $enumDecode(_$LeaseStatusEnumMap, json['status']),
);

Map<String, dynamic> _$TenantLeaseToJson(_TenantLease instance) =>
    <String, dynamic>{
      'leaseId': instance.leaseId,
      'tenantName': instance.tenantName,
      'propertyName': instance.propertyName,
      'unitName': instance.unitName,
      'status': _$LeaseStatusEnumMap[instance.status]!,
    };

const _$LeaseStatusEnumMap = {
  LeaseStatus.draft: 'draft',
  LeaseStatus.active: 'active',
  LeaseStatus.ended: 'ended',
};

_TenantDocument _$TenantDocumentFromJson(Map<String, dynamic> json) =>
    _TenantDocument(
      id: json['_id'] as String,
      title: json['title'] as String,
      createdAt: (json['createdAt'] as num).toInt(),
      available: json['available'] as bool,
      utilityBillEntryId: json['utilityBillEntryId'] as String?,
    );

Map<String, dynamic> _$TenantDocumentToJson(_TenantDocument instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'createdAt': instance.createdAt,
      'available': instance.available,
      'utilityBillEntryId': ?instance.utilityBillEntryId,
    };

_TenantMeters _$TenantMetersFromJson(Map<String, dynamic> json) =>
    _TenantMeters(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => MeterCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
      readings: (json['readings'] as List<dynamic>)
          .map((e) => MeterReading.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TenantMetersToJson(_TenantMeters instance) =>
    <String, dynamic>{
      'categories': instance.categories.map((e) => e.toJson()).toList(),
      'readings': instance.readings.map((e) => e.toJson()).toList(),
    };

_MeterCategory _$MeterCategoryFromJson(Map<String, dynamic> json) =>
    _MeterCategory(
      id: json['_id'] as String,
      name: json['name'] as String,
      unit: json['unit'] as String,
    );

Map<String, dynamic> _$MeterCategoryToJson(_MeterCategory instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'unit': instance.unit,
    };

_MeterReading _$MeterReadingFromJson(Map<String, dynamic> json) =>
    _MeterReading(
      categoryId: json['categoryId'] as String,
      consumptionMonth: json['consumptionMonth'] as String,
      reading: (json['reading'] as num).toDouble(),
      previousReading: (json['previousReading'] as num?)?.toDouble(),
      calculatedUsage: (json['calculatedUsage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$MeterReadingToJson(_MeterReading instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'consumptionMonth': instance.consumptionMonth,
      'reading': instance.reading,
      'previousReading': ?instance.previousReading,
      'calculatedUsage': ?instance.calculatedUsage,
    };
