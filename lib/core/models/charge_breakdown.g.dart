// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charge_breakdown.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChargeBreakdown _$ChargeBreakdownFromJson(Map<String, dynamic> json) =>
    _ChargeBreakdown(
      totalUsage: (json['totalUsage'] as num).toDouble(),
      tenantUsage: (json['tenantUsage'] as num).toDouble(),
      unit: json['unit'] as String,
      totalBillCents: (json['totalBillCents'] as num).toInt(),
      tenantMeterReading: (json['tenantMeterReading'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ChargeBreakdownToJson(_ChargeBreakdown instance) =>
    <String, dynamic>{
      'totalUsage': instance.totalUsage,
      'tenantUsage': instance.tenantUsage,
      'unit': instance.unit,
      'totalBillCents': instance.totalBillCents,
      'tenantMeterReading': ?instance.tenantMeterReading,
    };
