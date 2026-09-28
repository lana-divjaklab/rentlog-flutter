import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:rentlog/core/bloc/load_state.dart';
import 'package:rentlog/core/log.dart';
import 'package:rentlog/core/push/push_service.dart';
import 'package:rentlog/features/landlord/data/landlord_models.dart';
import 'package:rentlog/features/landlord/data/landlord_repository.dart';
import 'package:rentlog/features/session/data/session_repository.dart';

part 'settings_bloc.freezed.dart';

@freezed
sealed class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.started() = SettingsStarted;

  /// The app language changed; emails and pushes should follow.
  const factory SettingsEvent.languageSynced(String locale) = SettingsLanguageSynced;
  const factory SettingsEvent.deletionRequested() = SettingsDeletionRequested;
}

@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState({
    /// Only for landlords; tenants have no plan of their own.
    LoadState<BillingInfo>? billing,
    bool? notificationsOn,
    @Default('') String version,
    @Default(false) bool deleting,

    /// Set once deletion went through; the screen then signs out.
    @Default(false) bool deleted,
    Object? error,
  }) = _SettingsState;
}

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc({
    required this._session,
    required this._landlord,
    required this._push,
    this.organizationId,
  }) : super(const SettingsState()) {
    on<SettingsStarted>(_onStarted);
    on<SettingsLanguageSynced>(_onLanguage);
    on<SettingsDeletionRequested>(_onDelete);
  }

  final SessionRepository _session;
  final LandlordRepository _landlord;
  final PushService _push;

  /// The landlord org whose plan to show; null in the tenant view.
  final String? organizationId;

  Future<void> _onStarted(SettingsStarted event, Emitter<SettingsState> emit) async {
    final info = await PackageInfo.fromPlatform();
    emit(
      state.copyWith(
        version: '${info.version} (${info.buildNumber})',
        notificationsOn: _push.isAvailable ? await _push.isPermitted() : null,
        billing: organizationId == null ? null : const LoadState.loading(),
      ),
    );
    final orgId = organizationId;
    if (orgId == null) return;
    try {
      emit(state.copyWith(billing: LoadState.success(await _landlord.billing(orgId))));
    } on Object catch (error, stack) {
      logError('Loading billing', error, stack);
      emit(state.copyWith(billing: LoadState.failure(error)));
    }
  }

  Future<void> _onLanguage(
    SettingsLanguageSynced event,
    Emitter<SettingsState> emit,
  ) async {
    try {
      await _session.setLocale(event.locale);
    } on Object {
      // The app already switched; the server catches up next time.
    }
  }

  Future<void> _onDelete(
    SettingsDeletionRequested event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(deleting: true, error: null));
    try {
      await _session.requestAccountDeletion();
      emit(state.copyWith(deleting: false, deleted: true));
    } on Object catch (error, stack) {
      logError('Account deletion', error, stack);
      emit(state.copyWith(deleting: false, error: error));
    }
  }
}
