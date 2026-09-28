import 'package:flutter_test/flutter_test.dart';
import 'package:rentlog/core/models/enums.dart';
import 'package:rentlog/features/settlement/domain/settlement_logic.dart';

import 'settlement_fixtures.dart';

void main() {
  group('usage from readings', () {
    test('needs this and last month', () {
      final data = settlement(readings: [reading(month, 1250)]);
      expect(data.propertyUsage('water'), isNull);

      final both = settlement(readings: [reading(month, 1250), reading('2026-07', 1238)]);
      expect(both.propertyUsage('water'), 12);
    });

    test("the server's own calculation wins", () {
      final data = settlement(readings: [reading(month, 1250, calculatedUsage: 9)]);
      expect(data.propertyUsage('water'), 9);
    });

    test('a meter that went backwards gives no usage, not a negative one', () {
      final data = settlement(readings: [reading(month, 100), reading('2026-07', 120)]);
      expect(data.propertyUsage('water'), isNull);
    });

    test('unit meters are read per lease', () {
      final data = settlement(
        readings: [
          reading(month, 40, leaseId: 'leaseA'),
          reading('2026-07', 36, leaseId: 'leaseA'),
        ],
      );
      expect(data.leaseUsage('water', 'leaseA'), 4);
      expect(data.leaseUsage('water', 'leaseB'), isNull);
    });
  });

  group('step status', () {
    test('meters: every main and unit meter read this month', () {
      expect(metersStatus(settlement()), StepStatus.empty);
      expect(metersStatus(settlement(readings: [reading(month, 1)])), StepStatus.partial);
      expect(
        metersStatus(
          settlement(
            readings: [
              reading(month, 1),
              reading(month, 1, leaseId: 'leaseA'),
              reading(month, 1, leaseId: 'leaseB'),
            ],
          ),
        ),
        StepStatus.done,
      );
    });

    test('review is done once every lease is published', () {
      final published = leaseMonth([
        row(categoryId: 'water', type: AllocationType.fixed, amountCents: 3000, publishedAt: 1),
      ]);
      final draft = leaseMonth([
        row(categoryId: 'water', type: AllocationType.fixed, amountCents: 3000),
      ]);
      expect(
        reviewStatus(settlement(leaseMonths: {'leaseA': published, 'leaseB': draft})),
        StepStatus.partial,
      );
      expect(
        reviewStatus(settlement(leaseMonths: {'leaseA': published, 'leaseB': published})),
        StepStatus.done,
      );
    });
  });

  group('entries sent to generateForLeaseMonth', () {
    test('metered consumption carries the unit meter usage', () {
      final data = settlement(
        readings: [
          reading(month, 40, leaseId: 'leaseA'),
          reading('2026-07', 36, leaseId: 'leaseA'),
        ],
      );
      final entries = entriesFor(
        data: data,
        leaseId: 'leaseA',
        month: data.leaseMonths['leaseA']!,
        usageDrafts: const {},
        manualDrafts: const {},
      );
      expect(entries.single.tenantUsage, 4);
    });

    test('never leaves consumption or manual empty when something is stored', () {
      // Missing values make the server treat the cost as zero and delete it.
      final month = leaseMonth([
        row(categoryId: 'water', type: AllocationType.consumption, usesMeter: true, tenantUsage: 7),
        row(categoryId: 'heat', type: AllocationType.consumption, tenantUsage: 3),
        row(categoryId: 'garage', type: AllocationType.manual, amountCents: 2500),
      ]);
      final data = settlement(leaseMonths: {'leaseA': month, 'leaseB': null});
      final entries = entriesFor(
        data: data,
        leaseId: 'leaseA',
        month: month,
        usageDrafts: const {},
        manualDrafts: const {},
      );
      expect(entries[0].tenantUsage, 7, reason: 'no readings yet: keep stored usage');
      expect(entries[1].tenantUsage, 3);
      expect(entries[2].manualAmountCents, 2500);
    });

    test('typed values win over stored ones', () {
      final month = leaseMonth([
        row(categoryId: 'heat', type: AllocationType.consumption, tenantUsage: 3),
        row(categoryId: 'garage', type: AllocationType.manual, amountCents: 2500),
      ]);
      final data = settlement(leaseMonths: {'leaseA': month, 'leaseB': null});
      final entries = entriesFor(
        data: data,
        leaseId: 'leaseA',
        month: month,
        usageDrafts: {draftKey('leaseA', 'heat'): 5},
        manualDrafts: {draftKey('leaseA', 'garage'): 3000},
      );
      expect(entries[0].tenantUsage, 5);
      expect(entries[1].manualAmountCents, 3000);
    });
  });

  test('bill categories merge every lease, and know when usage is needed', () {
    final data = settlement(
      leaseMonths: {
        'leaseA': leaseMonth([row(categoryId: 'heat', type: AllocationType.consumption, totalBillCents: 9334)]),
        'leaseB': leaseMonth([row(categoryId: 'heat', type: AllocationType.fixed)]),
      },
    );
    final category = data.billCategories.single;
    expect(category.rows.keys, {'leaseA', 'leaseB'});
    expect(category.splitsByUsage, isTrue);
    expect(category.entered, isTrue);
  });
}
