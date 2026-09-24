import 'package:flutter_test/flutter_test.dart';
import 'package:rentlog/core/models/enums.dart';
import 'package:rentlog/features/landlord/domain/utility_preview.dart';

import '../../helpers/fixtures.dart';

void main() {
  group('previewCents (port of the web previewCents)', () {
    test('fixed uses the rule amount', () {
      final row = utilityRow(
        allocationType: AllocationType.fixed,
        ruleFixedAmountCents: 3000,
      );
      expect(previewCents(row, ''), 3000);
    });

    test('percentage takes its share of the bill', () {
      final row = utilityRow(
        allocationType: AllocationType.percentage,
        totalBillCents: 12345,
        rulePercentage: 50,
      );
      expect(previewCents(row, ''), 6173);
    });

    test('billMinusFixed never goes below zero', () {
      final row = utilityRow(
        allocationType: AllocationType.billMinusFixed,
        totalBillCents: 1000,
        ruleDeductionCents: 5000,
      );
      expect(previewCents(row, ''), 0);
    });

    test('consumption splits the bill by typed usage', () {
      final row = utilityRow(
        allocationType: AllocationType.consumption,
        totalBillCents: 10000,
        totalUsage: 400,
        tenantUsage: 100,
      );
      expect(previewCents(row, ''), 2500, reason: 'falls back to stored usage');
      expect(previewCents(row, '200'), 5000);
      expect(previewCents(row, '200,5'), 5013);
    });

    test('consumption without a bill keeps the stored amount', () {
      final row = utilityRow(
        allocationType: AllocationType.consumption,
        amountCents: 1234,
      );
      expect(previewCents(row, '50'), 1234);
      expect(needsBill(row), isTrue);
    });

    test('manual reads euros from the field', () {
      final row = utilityRow(amountCents: 500);
      expect(previewCents(row, '93,34'), 9334);
      expect(previewCents(row, ''), 500);
    });
  });

  group('utilitiesDirty', () {
    test('a row without a charge always needs saving', () {
      expect(utilitiesDirty([utilityRow(chargeId: null)], const {}), isTrue);
    });

    test('a typed change differs from the stored amount', () {
      final row = utilityRow(amountCents: 500);
      expect(utilitiesDirty([row], const {'cat1': '5,00'}), isFalse);
      expect(utilitiesDirty([row], const {'cat1': '6,00'}), isTrue);
    });

    test('a bill entered after the charge was made leaves it stale', () {
      final row = utilityRow(
        allocationType: AllocationType.percentage,
        amountCents: 0,
        totalBillCents: 10000,
        rulePercentage: 50,
      );
      expect(utilitiesDirty([row], const {}), isTrue);
    });
  });
}
