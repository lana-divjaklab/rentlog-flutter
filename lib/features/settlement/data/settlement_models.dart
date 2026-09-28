import 'package:freezed_annotation/freezed_annotation.dart';

part 'settlement_models.freezed.dart';
part 'settlement_models.g.dart';

/// `meters.listForProperty`: the property's metered utilities, its active
/// leases, and the readings in the requested months.
@freezed
abstract class PropertyMeters with _$PropertyMeters {
  const factory PropertyMeters({
    required List<MeteredUtility> categories,
    required List<PropertyLease> leases,
    required List<MeterReadingEntry> readings,
  }) = _PropertyMeters;

  factory PropertyMeters.fromJson(Map<String, dynamic> json) =>
      _$PropertyMetersFromJson(json);
}

@freezed
abstract class MeteredUtility with _$MeteredUtility {
  const factory MeteredUtility({
    @JsonKey(name: '_id') required String id,
    required String name,
    required String unit,
  }) = _MeteredUtility;

  factory MeteredUtility.fromJson(Map<String, dynamic> json) =>
      _$MeteredUtilityFromJson(json);
}

@freezed
abstract class PropertyLease with _$PropertyLease {
  const factory PropertyLease({
    @JsonKey(name: '_id') required String id,
    required String tenantName,
    required String unitName,
  }) = _PropertyLease;

  factory PropertyLease.fromJson(Map<String, dynamic> json) =>
      _$PropertyLeaseFromJson(json);
}

enum ReadingScope {
  @JsonValue('property')
  property,
  @JsonValue('lease')
  lease,
}

/// An end-of-month meter reading: the property's main meter, or one unit's.
@freezed
abstract class MeterReadingEntry with _$MeterReadingEntry {
  const factory MeterReadingEntry({
    required String categoryId,
    required String consumptionMonth,
    required ReadingScope scope,
    String? leaseId,
    required double reading,
    double? previousReading,
    double? calculatedUsage,
  }) = _MeterReadingEntry;

  factory MeterReadingEntry.fromJson(Map<String, dynamic> json) =>
      _$MeterReadingEntryFromJson(json);
}
