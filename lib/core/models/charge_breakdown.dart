import 'package:freezed_annotation/freezed_annotation.dart';

part 'charge_breakdown.freezed.dart';
part 'charge_breakdown.g.dart';

/// How a consumption-based charge was split (`breakdownValidator`).
@freezed
abstract class ChargeBreakdown with _$ChargeBreakdown {
  const factory ChargeBreakdown({
    required double totalUsage,
    required double tenantUsage,
    required String unit,
    required int totalBillCents,
    double? tenantMeterReading,
  }) = _ChargeBreakdown;

  factory ChargeBreakdown.fromJson(Map<String, dynamic> json) =>
      _$ChargeBreakdownFromJson(json);
}
