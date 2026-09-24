import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rentlog/core/models/enums.dart';
import 'package:rentlog/core/push/push_service.dart';
import 'package:rentlog/features/auth/data/auth_models.dart';
import 'package:rentlog/features/auth/data/auth_repository.dart';
import 'package:rentlog/features/session/bloc/session_bloc.dart';
import 'package:rentlog/features/session/data/session_models.dart';
import 'package:rentlog/features/session/data/session_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class _MockAuth extends Mock implements AuthRepository;

class _MockSession extends Mock implements SessionRepository;

class _MockPush extends Mock implements PushService;

const _user = AuthUser(
  id: 'user_1',
  email: 'ana@example.com',
  firstName: 'Ana',
  lastName: 'Novak',
);

Membership _member(String org, MembershipRole role, {int leases = 0}) => Membership(
  organizationId: org,
  organizationName: org,
  role: role,
  leaseCount: leases,
  propertyCount: 0,
);

void main() {
  late _MockAuth auth;
  late _MockSession session;
  late _MockPush push;
  late SharedPreferences prefs;

  setUp(() async {
    SharedPreferences.setMockInitialValues({});
    prefs = await SharedPreferences.getInstance();
    auth = _MockAuth();
    session = _MockSession();
    push = _MockPush();
    when(() => auth.signedOut).thenAnswer((_) => const Stream.empty());
    when(() => auth.restore()).thenAnswer((_) async => _user);
    when(() => session.viewer()).thenAnswer((_) async => null);
    when(
      () => session.store(
        email: any(named: 'email'),
        name: any(named: 'name'),
        locale: any(named: 'locale'),
      ),
    ).thenAnswer((_) async {});
    when(() => push.register(session)).thenAnswer((_) async {});
  });

  SessionBloc build() => SessionBloc(
    auth: auth,
    session: session,
    push: push,
    prefs: prefs,
    currentLanguage: () => 'sl',
  );

  blocTest<SessionBloc, SessionState>(
    'no stored session means signed out',
    setUp: () => when(() => auth.restore()).thenAnswer((_) async => null),
    build: build,
    act: (bloc) => bloc.add(const SessionEvent.started()),
    expect: () => [const SessionState.starting(), const SessionState.signedOut()],
  );

  blocTest<SessionBloc, SessionState>(
    'a user with no memberships is onboarded, never made a landlord',
    setUp: () => when(() => session.memberships()).thenAnswer((_) async => []),
    build: build,
    act: (bloc) => bloc.add(const SessionEvent.started()),
    expect: () => [
      const SessionState.starting(),
      const SessionState.onboarding(user: _user),
    ],
    verify: (_) {
      verifyNever(() => session.createLandlordOrganization(any()));
      // New user: the phone's language seeds their account.
      verify(
        () => session.store(email: 'ana@example.com', name: 'Ana Novak', locale: 'sl'),
      ).called(1);
    },
  );

  blocTest<SessionBloc, SessionState>(
    'tenant-only users get the tenant view',
    setUp: () => when(
      () => session.memberships(),
    ).thenAnswer((_) async => [_member('org1', MembershipRole.tenant)]),
    build: build,
    act: (bloc) => bloc.add(const SessionEvent.started()),
    skip: 1,
    expect: () => [
      const SessionState.ready(user: _user, role: AppRole.tenant, canSwitchRole: false),
    ],
  );

  blocTest<SessionBloc, SessionState>(
    'landlords land in the busiest org and can switch if also a tenant',
    setUp: () => when(() => session.memberships()).thenAnswer(
      (_) async => [
        _member('small', MembershipRole.owner, leases: 1),
        _member('big', MembershipRole.admin, leases: 5),
        _member('home', MembershipRole.tenant),
      ],
    ),
    build: build,
    act: (bloc) => bloc.add(const SessionEvent.started()),
    skip: 1,
    expect: () => [
      isA<SessionReady>()
          .having((s) => s.role, 'role', AppRole.landlord)
          .having((s) => s.landlordOrg?.organizationId, 'org', 'big')
          .having((s) => s.canSwitchRole, 'canSwitchRole', isTrue),
    ],
  );

  blocTest<SessionBloc, SessionState>(
    'an existing user keeps their own language',
    setUp: () {
      when(() => session.viewer()).thenAnswer(
        (_) async => const Viewer(
          id: 'u',
          email: 'ana@example.com',
          name: 'Ana',
          locale: 'en',
          isPlatformAdmin: false,
        ),
      );
      when(
        () => session.memberships(),
      ).thenAnswer((_) async => [_member('org1', MembershipRole.tenant)]);
    },
    build: build,
    act: (bloc) => bloc.add(const SessionEvent.started()),
    verify: (_) => verify(
      () => session.store(email: 'ana@example.com', name: 'Ana Novak'),
    ).called(1),
  );

  blocTest<SessionBloc, SessionState>(
    'sign-out unregisters push before ending the session',
    setUp: () {
      when(() => push.unregister(session)).thenAnswer((_) async {});
      when(() => auth.signOut()).thenAnswer((_) async {});
    },
    build: build,
    seed: () =>
        const SessionState.ready(user: _user, role: AppRole.tenant, canSwitchRole: false),
    act: (bloc) => bloc.add(const SessionEvent.signOutRequested()),
    expect: () => [const SessionState.signedOut()],
    verify: (_) => verifyInOrder([
      () => push.unregister(session),
      () => auth.signOut(),
    ]),
  );
}
