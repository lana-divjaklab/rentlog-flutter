import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rentlog/features/auth/bloc/auth_flow_bloc.dart';
import 'package:rentlog/features/auth/data/auth_models.dart';
import 'package:rentlog/features/auth/data/auth_repository.dart';

class _MockAuth extends Mock implements AuthRepository;

const _pending = PendingVerification.signIn(
  attemptId: 'sia_1',
  emailAddressId: 'idn_1',
  email: 'ana@example.com',
);
const _user = AuthUser(
  id: 'user_1',
  email: 'ana@example.com',
  firstName: 'Ana',
  lastName: 'Novak',
);

void main() {
  late _MockAuth auth;

  setUpAll(() => registerFallbackValue(_pending));
  setUp(() => auth = _MockAuth());

  blocTest<AuthFlowBloc, AuthFlowState>(
    'rejects a malformed email without calling Clerk',
    build: () => AuthFlowBloc(auth),
    act: (bloc) => bloc.add(const AuthFlowEvent.emailSubmitted('not-an-email')),
    expect: () => [
      const AuthFlowState(email: 'not-an-email', failure: AuthFailure.invalidEmail),
    ],
    verify: (_) => verifyNever(() => auth.startSignIn(any())),
  );

  blocTest<AuthFlowBloc, AuthFlowState>(
    'normalises the email and moves to the code step',
    setUp: () => when(() => auth.startSignIn(any())).thenAnswer((_) async => _pending),
    build: () => AuthFlowBloc(auth),
    act: (bloc) => bloc.add(const AuthFlowEvent.emailSubmitted('  Ana@Example.com ')),
    expect: () => [
      const AuthFlowState(email: 'ana@example.com', busy: true),
      const AuthFlowState(
        step: AuthStep.code,
        email: 'ana@example.com',
        pending: _pending,
      ),
    ],
    verify: (_) => verify(() => auth.startSignIn('ana@example.com')).called(1),
  );

  blocTest<AuthFlowBloc, AuthFlowState>(
    'an unknown email offers sign-up',
    setUp: () => when(
      () => auth.startSignIn(any()),
    ).thenThrow(const AuthException(AuthFailure.noAccount)),
    build: () => AuthFlowBloc(auth),
    act: (bloc) => bloc.add(const AuthFlowEvent.emailSubmitted('new@example.com')),
    skip: 1,
    expect: () => [
      const AuthFlowState(email: 'new@example.com', failure: AuthFailure.noAccount),
    ],
  );

  blocTest<AuthFlowBloc, AuthFlowState>(
    'a correct code completes with the user',
    setUp: () => when(
      () => auth.verifyCode(any(), '123456'),
    ).thenAnswer((_) async => _user),
    build: () => AuthFlowBloc(auth),
    seed: () => const AuthFlowState(step: AuthStep.code, pending: _pending),
    act: (bloc) => bloc.add(const AuthFlowEvent.codeSubmitted('123 456')),
    expect: () => [
      const AuthFlowState(step: AuthStep.code, pending: _pending, busy: true),
      const AuthFlowState(step: AuthStep.code, pending: _pending, user: _user),
    ],
  );

  blocTest<AuthFlowBloc, AuthFlowState>(
    'a short code is refused locally',
    build: () => AuthFlowBloc(auth),
    seed: () => const AuthFlowState(step: AuthStep.code, pending: _pending),
    act: (bloc) => bloc.add(const AuthFlowEvent.codeSubmitted('123')),
    expect: () => [
      const AuthFlowState(
        step: AuthStep.code,
        pending: _pending,
        failure: AuthFailure.invalidCode,
      ),
    ],
  );
}
