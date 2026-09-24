import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:rentlog/core/format/dates.dart';

void main() {
  setUpAll(initializeDateFormatting);

  test('monthLabelLong is capitalised in both languages', () {
    expect(monthLabelLong('2026-08', 'sl'), 'Avgust 2026');
    expect(monthLabelLong('2026-08', 'en'), 'August 2026');
  });

  test('previousMonthKey crosses the year boundary', () {
    expect(previousMonthKey('2026-01'), '2025-12');
    expect(previousMonthKey('2026-10'), '2026-09');
  });

  group('utilityDueDateForPeriod (port of the web rule)', () {
    test('defaults to the end of the following month', () {
      expect(utilityDueDateForPeriod('2026-01', 1, 'endOfMonth'), '2026-02-28');
      expect(utilityDueDateForPeriod('2027-12', 1, 'endOfMonth'), '2028-01-31');
    });

    test('clamps a fixed day to 28', () {
      expect(utilityDueDateForPeriod('2026-01', 2, 31), '2026-03-28');
      expect(utilityDueDateForPeriod('2026-01', 1, 15), '2026-02-15');
    });
  });

  group('paymentDelayDays', () {
    test('paid late counts to the payment date', () {
      expect(
        paymentDelayDays(
          dueDate: '2026-09-15',
          paidAt: '2026-09-20',
          paid: true,
          today: '2026-10-01',
        ),
        5,
      );
    });

    test('paid on time has no delay', () {
      expect(
        paymentDelayDays(
          dueDate: '2026-09-15',
          paidAt: '2026-09-14',
          paid: true,
          today: '2026-10-01',
        ),
        isNull,
      );
    });

    test('unpaid past due counts to today', () {
      expect(
        paymentDelayDays(
          dueDate: '2026-09-15',
          paidAt: null,
          paid: false,
          today: '2026-09-18',
        ),
        3,
      );
    });
  });
}
