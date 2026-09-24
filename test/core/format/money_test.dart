import 'package:flutter_test/flutter_test.dart';
import 'package:rentlog/core/format/money.dart';

void main() {
  group('formatMoney', () {
    test('uses Slovenian and English conventions', () {
      // NBSP between amount and symbol in sl.
      expect(formatMoney(9334, 'sl').replaceAll(' ', ' '), '93,34 €');
      expect(formatMoney(9334, 'en'), '€93.34');
    });

    test('shows a credit as a negative amount', () {
      expect(formatMoney(-666, 'en'), '-€6.66');
    });
  });

  group('parseEurosToCents', () {
    test('accepts either decimal separator', () {
      expect(parseEurosToCents('93,34'), 9334);
      expect(parseEurosToCents('93.34'), 9334);
      expect(parseEurosToCents(' 100 '), 10000);
    });

    test('rounds instead of truncating float error', () {
      // 0.29 * 100 == 28.999999999999996 in floating point.
      expect(parseEurosToCents('0,29'), 29);
    });

    test('returns null for blanks and junk', () {
      expect(parseEurosToCents(''), isNull);
      expect(parseEurosToCents('abc'), isNull);
    });
  });

  group('numberToInput', () {
    test('drops trailing zeros and never groups thousands', () {
      expect(numberToInput(1234.5, 'sl'), '1234,5');
      expect(numberToInput(12, 'en'), '12');
      expect(parseNumber(numberToInput(1234.5, 'sl')), 1234.5);
    });
  });

  test('centsToInput round-trips through parseEurosToCents', () {
    expect(parseEurosToCents(centsToInput(7834, 'sl')), 7834);
    expect(centsToInput(7834, 'sl'), '78,34');
  });
}
