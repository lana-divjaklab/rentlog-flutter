import 'package:json_annotation/json_annotation.dart';

/// `lease.utilityDueDay` is a day number or the literal "endOfMonth".
/// Kept as `Object` so it passes straight to `utilityDueDateForPeriod`.
class UtilityDueDayConverter implements JsonConverter<Object, Object> {
  const UtilityDueDayConverter();

  @override
  Object fromJson(Object json) => json is num ? json.toInt() : json.toString();

  @override
  Object toJson(Object object) => object;
}
