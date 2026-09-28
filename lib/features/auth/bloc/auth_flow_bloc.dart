import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rentlog/features/auth/data/auth_models.dart';
import 'package:rentlog/features/auth/data/auth_repository.dart';

part 'auth_flow_bloc.freezed.dart';

enum AuthStep { email, signUp, code }

@freezed
sealed class AuthFlowEvent with _$AuthFlowEvent {
  const factory AuthFlowEvent.emailSubmitted(String email) = AuthEmailSubmitted;
  const factory AuthFlowEvent.signUpOpened() = AuthSignUpOpened;
  const factory AuthFlowEvent.signUpSubmitted({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  }) = AuthSignUpSubmitted;
  const factory AuthFlowEvent.codeSubmitted(String code) = AuthCodeSubmitted;
  const factory AuthFlowEvent.resendRequested() = AuthResendRequested;
  const factory AuthFlowEvent.backToEmail() = AuthBackToEmail;
}

@freezed
abstract class AuthFlowState with _$AuthFlowState {
  const factory AuthFlowState({
    @Default(AuthStep.email) AuthStep step,
    @Default('') String email,
    @Default(false) bool busy,
    PendingVerification? pending,
    AuthFailure? failure,

    /// Clerk's own words for [failure], shown under "Show details".
    String? failureDetail,
    @Default(false) bool codeResent,

    /// Set once the code is accepted; the screen hands it to the session.
    AuthUser? user,
  }) = _AuthFlowState;
}

class AuthFlowBloc extends Bloc<AuthFlowEvent, AuthFlowState> {
  AuthFlowBloc(this._auth) : super(const AuthFlowState()) {
    on<AuthEmailSubmitted>(_onEmail);
    on<AuthSignUpOpened>(
      (event, emit) => emit(state.copyWith(step: AuthStep.signUp, failure: null)),
    );
    on<AuthSignUpSubmitted>(_onSignUp);
    on<AuthCodeSubmitted>(_onCode);
    on<AuthResendRequested>(_onResend);
    on<AuthBackToEmail>(
      (event, emit) => emit(AuthFlowState(email: state.email)),
    );
  }

  final AuthRepository _auth;

  static final _emailPattern = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');

  Future<void> _onEmail(AuthEmailSubmitted event, Emitter<AuthFlowState> emit) async {
    final email = event.email.trim().toLowerCase();
    if (!_emailPattern.hasMatch(email)) {
      emit(state.copyWith(email: email, failure: AuthFailure.invalidEmail));
      return;
    }
    emit(state.copyWith(email: email, busy: true, failure: null));
    try {
      final pending = await _auth.startSignIn(email);
      emit(
        state.copyWith(step: AuthStep.code, busy: false, pending: pending),
      );
    } on AuthException catch (e) {
      emit(state.copyWith(busy: false, failure: e.failure, failureDetail: e.detail));
    }
  }

  Future<void> _onSignUp(
    AuthSignUpSubmitted event,
    Emitter<AuthFlowState> emit,
  ) async {
    final email = event.email.trim().toLowerCase();
    if (!_emailPattern.hasMatch(email)) {
      emit(state.copyWith(email: email, failure: AuthFailure.invalidEmail));
      return;
    }
    emit(state.copyWith(email: email, busy: true, failure: null));
    try {
      final pending = await _auth.startSignUp(
        email: email,
        password: event.password,
        firstName: event.firstName.trim(),
        lastName: event.lastName.trim(),
      );
      emit(
        state.copyWith(step: AuthStep.code, busy: false, pending: pending),
      );
    } on AuthException catch (e) {
      emit(state.copyWith(busy: false, failure: e.failure, failureDetail: e.detail));
    }
  }

  Future<void> _onCode(AuthCodeSubmitted event, Emitter<AuthFlowState> emit) async {
    final pending = state.pending;
    final code = event.code.replaceAll(RegExp(r'\s'), '');
    if (pending == null) return;
    if (code.length != 6) {
      emit(state.copyWith(failure: AuthFailure.invalidCode));
      return;
    }
    emit(state.copyWith(busy: true, failure: null, codeResent: false));
    try {
      final user = await _auth.verifyCode(pending, code);
      emit(state.copyWith(busy: false, user: user));
    } on AuthException catch (e) {
      emit(state.copyWith(busy: false, failure: e.failure, failureDetail: e.detail));
    }
  }

  Future<void> _onResend(
    AuthResendRequested event,
    Emitter<AuthFlowState> emit,
  ) async {
    final pending = state.pending;
    if (pending == null) return;
    emit(state.copyWith(busy: true, failure: null, codeResent: false));
    try {
      await _auth.resendCode(pending);
      emit(state.copyWith(busy: false, codeResent: true));
    } on AuthException catch (e) {
      emit(state.copyWith(busy: false, failure: e.failure, failureDetail: e.detail));
    }
  }
}
