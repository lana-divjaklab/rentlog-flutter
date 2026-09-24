import 'package:intl/intl.dart';

/// Month keys are "YYYY-MM" and dates "YYYY-MM-DD", exactly as Convex stores
/// them, so no timezone ever gets involved.

String _intlLocale(String locale) => locale == 'sl' ? 'sl_SI' : 'en_GB';

DateTime _parseMonth(String month) {
  final parts = month.split('-').map(int.parse).toList();
  return DateTime(parts[0], parts[1]);
}

DateTime parseIsoDate(String isoDate) {
  final parts = isoDate.split('-').map(int.parse).toList();
  return DateTime(parts[0], parts[1], parts[2]);
}

String toIsoDate(DateTime date) =>
    '${date.year.toString().padLeft(4, '0')}-'
    '${date.month.toString().padLeft(2, '0')}-'
    '${date.day.toString().padLeft(2, '0')}';

String todayIso() => toIsoDate(DateTime.now());

String currentMonthKey() => todayIso().substring(0, 7);

/// "2026-09" → "September 2026" / "September 2026". Capitalised like the web
/// headings, which Slovenian month names aren't by default.
String monthLabelLong(String month, String locale) {
  final label = DateFormat.yMMMM(_intlLocale(locale)).format(_parseMonth(month));
  return label.isEmpty ? label : label[0].toUpperCase() + label.substring(1);
}

/// "2026-09-24" → "24. 9. 2026" / "24/09/2026".
String formatDate(String isoDate, String locale) =>
    DateFormat.yMd(_intlLocale(locale)).format(parseIsoDate(isoDate));

String previousMonthKey(String month) {
  final date = _parseMonth(month);
  final prev = DateTime(date.year, date.month - 1);
  return '${prev.year}-${prev.month.toString().padLeft(2, '0')}';
}

/// Whole days from [from] to [to]; positive when [to] is later.
int daysBetweenIso(String from, String to) {
  DateTime utc(String iso) {
    final d = parseIsoDate(iso);
    return DateTime.utc(d.year, d.month, d.day);
  }

  return utc(to).difference(utc(from)).inDays;
}

/// Utility due date for a period, per the lease's rule. Port of
/// `utilityDueDateForPeriod` in the web app's `src/lib/utils.ts`.
String utilityDueDateForPeriod(
  String periodMonth,
  int offsetMonths,
  Object day,
) {
  final base = _parseMonth(periodMonth);
  final target = DateTime(base.year, base.month + offsetMonths);
  if (day == 'endOfMonth') {
    final last = DateTime(target.year, target.month + 1, 0);
    return toIsoDate(last);
  }
  final safeDay = (day as num).toInt().clamp(1, 28);
  return toIsoDate(DateTime(target.year, target.month, safeDay));
}

/// Days late, or null when there is no delay. Port of the web's
/// `paymentDelayDays`: a paid charge is measured to its payment date, an
/// open one past its due date to today.
int? paymentDelayDays({
  required String dueDate,
  required String? paidAt,
  required bool paid,
  required String today,
}) {
  if (paid) {
    if (paidAt == null) return null;
    final days = daysBetweenIso(dueDate, paidAt);
    return days > 0 ? days : null;
  }
  if (today.compareTo(dueDate) > 0) {
    return daysBetweenIso(dueDate, today);
  }
  return null;
}
