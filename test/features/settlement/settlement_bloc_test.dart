import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rentlog/core/models/enums.dart';
import 'package:rentlog/features/landlord/data/landlord_models.dart';
import 'package:rentlog/features/landlord/data/landlord_repository.dart';
import 'package:rentlog/features/settlement/bloc/settlement_bloc.dart';
import 'package:rentlog/features/settlement/data/settlement_models.dart';
import 'package:rentlog/features/settlement/data/settlement_repository.dart';

import 'settlement_fixtures.dart';

class _MockLandlord extends Mock implements LandlordRepository;

class _MockSettlement extends Mock implements SettlementRepository;

const _property = PropertyItem(id: 'p1', name: 'Hiša', address: 'Ulica 1', units: []);

void main() {
  late _MockLandlord landlord;
  late _MockSettlement repo;

  // Lease A is still a draft, lease B already published.
  final draftMonth = leaseMonth([
    row(categoryId: 'water', type: AllocationType.consumption, usesMeter: true, amountCents: 1200),
  ]);
  final publishedMonth = leaseMonth([
    row(
      categoryId: 'water',
      type: AllocationType.consumption,
      usesMeter: true,
      amountCents: 900,
      publishedAt: 1,
    ),
  ]);

  setUpAll(() {
    registerFallbackValue(<UtilityEntry>[]);
    registerFallbackValue(ReadingScope.property);
  });

  setUp(() {
    landlord = _MockLandlord();
    repo = _MockSettlement();
    when(() => landlord.properties(any())).thenAnswer((_) async => [_property]);
    when(
      () => repo.meters(
        organizationId: any(named: 'organizationId'),
        propertyId: any(named: 'propertyId'),
        fromMonth: any(named: 'fromMonth'),
        toMonth: any(named: 'toMonth'),
      ),
    ).thenAnswer(
      (_) async => PropertyMeters(
        categories: const [water],
        leases: const [leaseA, leaseB],
        readings: [reading(month, 1250), reading('2026-07', 1238)],
      ),
    );
    when(
      () => landlord.leaseYear(
        organizationId: any(named: 'organizationId'),
        leaseId: 'leaseA',
        year: any(named: 'year'),
      ),
    ).thenAnswer((_) async => LeaseYear(rentDefaultCents: 0, rentDueDay: 15, months: [draftMonth]));
    when(
      () => landlord.leaseYear(
        organizationId: any(named: 'organizationId'),
        leaseId: 'leaseB',
        year: any(named: 'year'),
      ),
    ).thenAnswer(
      (_) async => LeaseYear(rentDefaultCents: 0, rentDueDay: 15, months: [publishedMonth]),
    );
    when(
      () => repo.applyMetersToBilling(
        organizationId: any(named: 'organizationId'),
        propertyId: any(named: 'propertyId'),
        categoryId: any(named: 'categoryId'),
        month: any(named: 'month'),
      ),
    ).thenAnswer((_) async {});
    when(
      () => landlord.saveUtilities(
        organizationId: any(named: 'organizationId'),
        leaseId: any(named: 'leaseId'),
        periodMonth: any(named: 'periodMonth'),
        entries: any(named: 'entries'),
        publish: any(named: 'publish'),
      ),
    ).thenAnswer((_) async {});
    when(
      () => landlord.publishMonth(
        organizationId: any(named: 'organizationId'),
        leaseId: any(named: 'leaseId'),
        periodMonth: any(named: 'periodMonth'),
      ),
    ).thenAnswer((_) async {});
  });

  SettlementBloc build() => SettlementBloc(
    landlord: landlord,
    settlement: repo,
    organizationId: 'org1',
    month: month,
  );

  test('starts on last month by default', () {
    final bloc = SettlementBloc(landlord: landlord, settlement: repo, organizationId: 'org1');
    expect(bloc.state.month.compareTo(DateTime.now().toIso8601String().substring(0, 7)), -1);
  });

  blocTest<SettlementBloc, SettlementState>(
    'opening the review carries meters into bills before recalculating each lease',
    build: build,
    act: (bloc) async {
      bloc.add(const SettlementEvent.started());
      await Future<void>.delayed(Duration.zero);
      bloc.add(const SettlementEvent.stepSelected(SettlementStep.review));
    },
    wait: const Duration(milliseconds: 50),
    verify: (_) {
      verifyInOrder([
        () => repo.applyMetersToBilling(
          organizationId: 'org1',
          propertyId: 'p1',
          categoryId: 'water',
          month: month,
        ),
        () => landlord.saveUtilities(
          organizationId: 'org1',
          leaseId: 'leaseA',
          periodMonth: month,
          entries: any(named: 'entries'),
          // publish defaults to false: calculating never publishes.
        ),
      ]);
    },
  );

  blocTest<SettlementBloc, SettlementState>(
    'publishing touches only tenants still in draft',
    build: build,
    act: (bloc) async {
      bloc.add(const SettlementEvent.started());
      await Future<void>.delayed(Duration.zero);
      bloc.add(const SettlementEvent.publishRequested());
    },
    wait: const Duration(milliseconds: 50),
    verify: (bloc) {
      verify(
        () => landlord.publishMonth(organizationId: 'org1', leaseId: 'leaseA', periodMonth: month),
      ).called(1);
      verifyNever(
        () => landlord.publishMonth(
          organizationId: any(named: 'organizationId'),
          leaseId: 'leaseB',
          periodMonth: any(named: 'periodMonth'),
        ),
      );
      expect(bloc.state.publishedCount, 1);
      expect(bloc.state.publishing, isFalse);
    },
  );

  blocTest<SettlementBloc, SettlementState>(
    'a reading saves with the right scope and is marked saved',
    setUp: () => when(
      () => repo.saveReading(
        organizationId: any(named: 'organizationId'),
        propertyId: any(named: 'propertyId'),
        categoryId: any(named: 'categoryId'),
        month: any(named: 'month'),
        scope: any(named: 'scope'),
        leaseId: any(named: 'leaseId'),
        reading: any(named: 'reading'),
      ),
    ).thenAnswer((_) async {}),
    build: build,
    act: (bloc) async {
      bloc.add(const SettlementEvent.started());
      await Future<void>.delayed(Duration.zero);
      bloc.add(
        const SettlementEvent.readingCommitted(categoryId: 'water', leaseId: 'leaseA', reading: 40),
      );
    },
    wait: const Duration(milliseconds: 50),
    verify: (bloc) {
      verify(
        () => repo.saveReading(
          organizationId: 'org1',
          propertyId: 'p1',
          categoryId: 'water',
          month: month,
          scope: ReadingScope.lease,
          leaseId: 'leaseA',
          reading: 40,
        ),
      ).called(1);
      expect(bloc.state.saved, contains('reading:water:leaseA'));
    },
  );
}
