import 'package:intl/intl.dart';

/// Cents → "93,34 €" (sl) / "€93.34" (en), like the web's `formatMoney`.
String formatMoney(int cents, String locale) {
  final format = NumberFormat.currency(
    locale: locale == 'sl' ? 'sl_SI' : 'en_GB',
    symbol: '€',
    decimalDigits: 2,
  );
  return format.format(cents / 100);
}

/// Cents → "93,34" for an editable field, in the locale's decimal separator.
String centsToInput(int cents, String locale) {
  final value = (cents / 100).toStringAsFixed(2);
  return locale == 'sl' ? value.replaceAll('.', ',') : value;
}

/// "93,34" or "93.34" → 9334. Null when the text isn't a number.
///
/// Accepts either separator whatever the locale: people type what their
/// keyboard offers, and a comma-for-decimals phone is the norm here.
int? parseEurosToCents(String text) {
  final cleaned = text.trim().replaceAll(' ', '').replaceAll(',', '.');
  if (cleaned.isEmpty) return null;
  final value = double.tryParse(cleaned);
  if (value == null) return null;
  return (value * 100).round();
}

/// Plain number for usage/readings ("12,5" / "12.5"), up to two decimals.
String formatUsage(num value, String locale) {
  final format = NumberFormat.decimalPattern(locale == 'sl' ? 'sl_SI' : 'en_GB')
    ..maximumFractionDigits = 2;
  return format.format(value);
}

/// Usage input: same separator tolerance as [parseEurosToCents].
double? parseNumber(String text) {
  final cleaned = text.trim().replaceAll(' ', '').replaceAll(',', '.');
  if (cleaned.isEmpty) return null;
  return double.tryParse(cleaned);
}

/// A number for an editable field: no thousands grouping (which
/// [parseNumber] couldn't read back), trailing zeros dropped.
String numberToInput(num value, String locale) {
  var text = value.toStringAsFixed(2);
  text = text.replaceFirst(RegExp(r'\.?0+$'), '');
  return locale == 'sl' ? text.replaceAll('.', ',') : text;
}
