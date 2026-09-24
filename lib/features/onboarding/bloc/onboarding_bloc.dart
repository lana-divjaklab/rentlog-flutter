import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rentlog/core/models/enums.dart';
import 'package:rentlog/features/session/data/session_models.dart';
import 'package:rentlog/features/session/data/session_repository.dart';

part 'onboarding_bloc.freezed.dart';

@freezed
sealed class OnboardingEvent with _$OnboardingEvent {
  const factory OnboardingEvent.codeChecked(String code) = OnboardingCodeChecked;
  const factory OnboardingEvent.joinRequested() = OnboardingJoinRequested;
  const factory OnboardingEvent.landlordRequested(String organizationName) =
      OnboardingLandlordRequested;
}

enum OnboardingFailure { invalid, revoked, used, error }

@freezed
abstract class OnboardingState with _$OnboardingState {
  const factory OnboardingState({
    @Default(false) bool busy,
    InvitePreview? preview,
    OnboardingFailure? failure,

    /// A membership now exists; the session reloads and routes onward.
    @Default(false) bool done,
  }) = _OnboardingState;
}

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc(this._session) : super(const OnboardingState()) {
    on<OnboardingCodeChecked>(_onCheck);
    on<OnboardingJoinRequested>(_onJoin);
    on<OnboardingLandlordRequested>(_onLandlord);
  }

  final SessionRepository _session;

  /// Same shape `leaseInvites` generates: 8 characters, no I or O.
  static String normalize(String code) =>
      code.trim().toUpperCase().replaceAll(RegExp('[^A-Z0-9]'), '');

  Future<void> _onCheck(
    OnboardingCodeChecked event,
    Emitter<OnboardingState> emit,
  ) async {
    final code = normalize(event.code);
    if (code.length != 8) {
      emit(const OnboardingState(failure: OnboardingFailure.invalid));
      return;
    }
    emit(const OnboardingState(busy: true));
    try {
      final preview = await _session.previewInvite(code);
      final failure = switch (preview?.status) {
        null || InviteStatus.invalid => OnboardingFailure.invalid,
        InviteStatus.revoked => OnboardingFailure.revoked,
        // Accepting twice as the same user is fine server-side, but the
        // preview can't tell us who accepted it.
        InviteStatus.accepted => OnboardingFailure.used,
        InviteStatus.pending => null,
      };
      emit(OnboardingState(preview: failure == null ? preview : null, failure: failure));
    } on Object {
      emit(const OnboardingState(failure: OnboardingFailure.error));
    }
  }

  Future<void> _onJoin(
    OnboardingJoinRequested event,
    Emitter<OnboardingState> emit,
  ) async {
    final preview = state.preview;
    if (preview == null) return;
    emit(state.copyWith(busy: true, failure: null));
    try {
      await _session.acceptInvite(preview.code);
      emit(state.copyWith(busy: false, done: true));
    } on Object {
      emit(state.copyWith(busy: false, failure: OnboardingFailure.error));
    }
  }

  Future<void> _onLandlord(
    OnboardingLandlordRequested event,
    Emitter<OnboardingState> emit,
  ) async {
    emit(state.copyWith(busy: true, failure: null));
    try {
      await _session.createLandlordOrganization(event.organizationName);
      emit(state.copyWith(busy: false, done: true));
    } on Object {
      emit(state.copyWith(busy: false, failure: OnboardingFailure.error));
    }
  }
}
