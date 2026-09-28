// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settlement_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PropertyMeters _$PropertyMetersFromJson(Map<String, dynamic> json) =>
    _PropertyMeters(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => MeteredUtility.fromJson(e as Map<String, dynamic>))
          .toList(),
      leases: (json['leases'] as List<dynamic>)
          .map((e) => PropertyLease.fromJson(e as Map<String, dynamic>))
          .toList(),
      readings: (json['readings'] as List<dynamic>)
          .map((e) => MeterReadingEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PropertyMetersToJson(_PropertyMeters instance) =>
    <String, dynamic>{
      'categories': instance.categories.map((e) => e.toJson()).toList(),
      'leases': instance.leases.map((e) => e.toJson()).toList(),
      'readings': instance.readings.map((e) => e.toJson()).toList(),
    };

_MeteredUtility _$MeteredUtilityFromJson(Map<String, dynamic> json) =>
    _MeteredUtility(
      id: json['_id'] as String,
      name: json['name'] as String,
      unit: json['unit'] as String,
    );

Map<String, dynamic> _$MeteredUtilityToJson(_MeteredUtility instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'unit': instance.unit,
    };

_PropertyLease _$PropertyLeaseFromJson(Map<String, dynamic> json) =>
    _PropertyLease(
      id: json['_id'] as String,
      tenantName: json['tenantName'] as String,
      unitName: json['unitName'] as String,
    );

Map<String, dynamic> _$PropertyLeaseToJson(_PropertyLease instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'tenantName': instance.tenantName,
      'unitName': instance.unitName,
    };

_MeterReadingEntry _$MeterReadingEntryFromJson(Map<String, dynamic> json) =>
    _MeterReadingEntry(
      categoryId: json['categoryId'] as String,
      consumptionMonth: json['consumptionMonth'] as String,
      scope: $enumDecode(_$ReadingScopeEnumMap, json['scope']),
      leaseId: json['leaseId'] as String?,
      reading: (json['reading'] as num).toDouble(),
      previousReading: (json['previousReading'] as num?)?.toDouble(),
      calculatedUsage: (json['calculatedUsage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$MeterReadingEntryToJson(_MeterReadingEntry instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'consumptionMonth': instance.consumptionMonth,
      'scope': _$ReadingScopeEnumMap[instance.scope]!,
      'leaseId': ?instance.leaseId,
      'reading': instance.reading,
      'previousReading': ?instance.previousReading,
      'calculatedUsage': ?instance.calculatedUsage,
    };

const _$ReadingScopeEnumMap = {
  ReadingScope.property: 'property',
  ReadingScope.lease: 'lease',
};
