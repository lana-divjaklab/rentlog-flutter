import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rentlog/core/push/push_service.dart';
import 'package:rentlog/features/landlord/data/landlord_repository.dart';
import 'package:rentlog/features/session/data/session_repository.dart';
import 'package:rentlog/features/settings/bloc/settings_bloc.dart';

class _MockPush extends Mock implements PushService;

class _MockSession extends Mock implements SessionRepository;

class _MockLandlord extends Mock implements LandlordRepository;

void main() {
  late _MockPush push;
  late _MockSession session;

  setUpAll(() => registerFallbackValue(_MockSession()));

  setUp(() {
    push = _MockPush();
    session = _MockSession();
  });

  SettingsBloc build() =>
      SettingsBloc(session: session, landlord: _MockLandlord(), push: push);

  blocTest<SettingsBloc, SettingsState>(
    'switching off unregisters this phone',
    setUp: () => when(
      () => push.setEnabled(enabled: false, sink: session),
    ).thenAnswer((_) async => PushStatus.off),
    build: build,
    seed: () => const SettingsState(notifications: PushStatus.on),
    act: (bloc) => bloc.add(const SettingsEvent.notificationsToggled(enabled: false)),
    expect: () => [
      const SettingsState(notifications: PushStatus.on, notificationsBusy: true),
      const SettingsState(notifications: PushStatus.off),
    ],
  );

  blocTest<SettingsBloc, SettingsState>(
    'switching on registers again',
    setUp: () => when(
      () => push.setEnabled(enabled: true, sink: session),
    ).thenAnswer((_) async => PushStatus.on),
    build: build,
    seed: () => const SettingsState(notifications: PushStatus.off),
    act: (bloc) => bloc.add(const SettingsEvent.notificationsToggled(enabled: true)),
    skip: 1,
    expect: () => [const SettingsState(notifications: PushStatus.on)],
  );

  blocTest<SettingsBloc, SettingsState>(
    'when the phone blocks it, switching on opens its settings instead',
    setUp: () => when(() => push.openSystemSettings()).thenAnswer((_) async {}),
    build: build,
    seed: () => const SettingsState(notifications: PushStatus.blockedBySystem),
    act: (bloc) => bloc.add(const SettingsEvent.notificationsToggled(enabled: true)),
    expect: () => <SettingsState>[],
    verify: (_) {
      verify(() => push.openSystemSettings()).called(1);
      verifyNever(
        () => push.setEnabled(
          enabled: any(named: 'enabled'),
          sink: any(named: 'sink'),
        ),
      );
    },
  );

  blocTest<SettingsBloc, SettingsState>(
    'coming back from the phone settings picks up the new permission',
    setUp: () => when(() => push.status()).thenAnswer((_) async => PushStatus.on),
    build: build,
    seed: () => const SettingsState(notifications: PushStatus.blockedBySystem),
    act: (bloc) => bloc.add(const SettingsEvent.notificationsRechecked()),
    expect: () => [const SettingsState(notifications: PushStatus.on)],
  );
}
