import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rentlog/core/bloc/load_state.dart';
import 'package:rentlog/features/landlord/bloc/lease_detail_bloc.dart';
import 'package:rentlog/features/landlord/data/landlord_models.dart';
import 'package:rentlog/features/landlord/data/landlord_repository.dart';

class _MockRepo extends Mock implements LandlordRepository;

const _year = LeaseYear(rentDefaultCents: 50000, rentDueDay: 15, months: []);

void main() {
  late _MockRepo repo;

  setUp(() {
    repo = _MockRepo();
    when(
      () => repo.leaseYear(
        organizationId: any(named: 'organizationId'),
        leaseId: any(named: 'leaseId'),
        year: any(named: 'year'),
      ),
    ).thenAnswer((_) async => _year);
  });

  LeaseDetailBloc build() => LeaseDetailBloc(
    repository: repo,
    organizationId: 'org1',
    leaseId: 'lease1',
    year: 2026,
  );

  blocTest<LeaseDetailBloc, LeaseDetailState>(
    'loads the requested year',
    build: build,
    act: (bloc) => bloc.add(const LeaseDetailEvent.started()),
    expect: () => [
      const LeaseDetailState(year: 2026),
      const LeaseDetailState(year: 2026, data: LoadState.success(_year)),
    ],
  );

  blocTest<LeaseDetailBloc, LeaseDetailState>(
    'publishing saves the costs published, then publishes the rest',
    setUp: () {
      when(
        () => repo.saveUtilities(
          organizationId: any(named: 'organizationId'),
          leaseId: any(named: 'leaseId'),
          periodMonth: any(named: 'periodMonth'),
          entries: any(named: 'entries'),
          publish: any(named: 'publish'),
        ),
      ).thenAnswer((_) async {});
      when(
        () => repo.publishMonth(
          organizationId: any(named: 'organizationId'),
          leaseId: any(named: 'leaseId'),
          periodMonth: any(named: 'periodMonth'),
        ),
      ).thenAnswer((_) async {});
    },
    build: build,
    seed: () => const LeaseDetailState(year: 2026, data: LoadState.success(_year)),
    act: (bloc) => bloc.add(
      const LeaseDetailEvent.utilitiesSaved(
        month: '2026-09',
        entries: [],
        publish: true,
      ),
    ),
    verify: (bloc) {
      verifyInOrder([
        () => repo.saveUtilities(
          organizationId: 'org1',
          leaseId: 'lease1',
          periodMonth: '2026-09',
          entries: [],
          publish: true,
        ),
        () => repo.publishMonth(
          organizationId: 'org1',
          leaseId: 'lease1',
          periodMonth: '2026-09',
        ),
      ]);
      expect(bloc.state.notice, LeaseDetailNotice.monthPublished);
      expect(bloc.state.busyMonth, isNull);
    },
  );

  blocTest<LeaseDetailBloc, LeaseDetailState>(
    'paying utilities records the amount actually transferred',
    setUp: () => when(
      () => repo.markUtilitiesPaid(
        organizationId: any(named: 'organizationId'),
        leaseId: any(named: 'leaseId'),
        periodMonth: any(named: 'periodMonth'),
        paidAt: any(named: 'paidAt'),
        paidCents: any(named: 'paidCents'),
      ),
    ).thenAnswer((_) async {}),
    build: build,
    seed: () => const LeaseDetailState(year: 2026, data: LoadState.success(_year)),
    act: (bloc) => bloc.add(
      const LeaseDetailEvent.utilitiesPaid(
        month: '2026-08',
        paidAt: '2026-09-10',
        paidCents: 10000,
      ),
    ),
    verify: (_) => verify(
      () => repo.markUtilitiesPaid(
        organizationId: 'org1',
        leaseId: 'lease1',
        periodMonth: '2026-08',
        paidAt: '2026-09-10',
        paidCents: 10000,
      ),
    ).called(1),
  );

  blocTest<LeaseDetailBloc, LeaseDetailState>(
    'a failed action surfaces the error and frees the month',
    setUp: () => when(
      () => repo.markUtilitiesUnpaid(
        organizationId: any(named: 'organizationId'),
        leaseId: any(named: 'leaseId'),
        periodMonth: any(named: 'periodMonth'),
      ),
    ).thenThrow(Exception('boom')),
    build: build,
    seed: () => const LeaseDetailState(year: 2026, data: LoadState.success(_year)),
    act: (bloc) => bloc.add(const LeaseDetailEvent.utilitiesUnpaid(month: '2026-08')),
    verify: (bloc) {
      expect(bloc.state.error, isA<Exception>());
      expect(bloc.state.busyMonth, isNull);
      expect(bloc.state.signal, 1);
    },
  );
}
