import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rentlog/core/auth/clerk_api.dart';
import 'package:rentlog/core/convex/convex_exception.dart';
import 'package:rentlog/core/push/push_service.dart';
import 'package:rentlog/features/auth/data/auth_models.dart';
import 'package:rentlog/features/auth/data/auth_repository.dart';
import 'package:rentlog/features/session/data/session_models.dart';
import 'package:rentlog/features/session/data/session_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'session_bloc.freezed.dart';

enum AppRole { tenant, landlord }

@freezed
sealed class SessionEvent with _$SessionEvent {
  const factory SessionEvent.started() = SessionStarted;
  const factory SessionEvent.signedIn(AuthUser user) = SessionSignedIn;

  /// Onboarding created a membership (joined a lease, or became a landlord).
  const factory SessionEvent.membershipsChanged() = SessionMembershipsChanged;
  const factory SessionEvent.roleSwitched(AppRole role) = SessionRoleSwitched;
  const factory SessionEvent.signOutRequested() = SessionSignOutRequested;
  const factory SessionEvent.expired() = SessionExpiredEvent;
}

@freezed
sealed class SessionState with _$SessionState {
  const factory SessionState.starting() = SessionStarting;
  const factory SessionState.signedOut({@Default(false) bool expired}) =
      SessionSignedOut;

  /// Signed in but in no organisation yet: invite code or landlord signup.
  const factory SessionState.onboarding({required AuthUser user}) =
      SessionOnboarding;
  const factory SessionState.ready({
    required AuthUser user,
    required AppRole role,

    /// The org landlord screens work in; null for tenant-only users.
    Membership? landlordOrg,
    required bool canSwitchRole,
  }) = SessionReady;

  /// Couldn't reach Clerk or Convex while starting (offline at launch).
  const factory SessionState.unavailable({required Object error}) =
      SessionUnavailable;
}

/// Who is signed in and which side of the app they see. The router follows
/// this state and nothing else.
class SessionBloc extends Bloc<SessionEvent, SessionState> {
  SessionBloc({
    required this._auth,
    required this._session,
    required this._push,
    required this._prefs,
    required this._currentLanguage,
  }) : super(const SessionState.starting()) {
    on<SessionStarted>(_onStarted);
    on<SessionSignedIn>((event, emit) => _enter(event.user, emit));
    on<SessionMembershipsChanged>(_onMembershipsChanged);
    on<SessionRoleSwitched>(_onRoleSwitched);
    on<SessionSignOutRequested>(_onSignOut);
    on<SessionExpiredEvent>(_onExpired);
    _expirySub = _auth.signedOut.listen((_) => add(const SessionEvent.expired()));
  }

  final AuthRepository _auth;
  final SessionRepository _session;
  final PushService _push;
  final SharedPreferences _prefs;
  final String Function() _currentLanguage;
  late final StreamSubscription<void> _expirySub;

  static const _roleKey = 'role';

  Future<void> _onStarted(SessionStarted event, Emitter<SessionState> emit) async {
    emit(const SessionState.starting());
    try {
      final user = await _auth.restore();
      if (user == null) {
        emit(const SessionState.signedOut());
        return;
      }
      await _enter(user, emit);
    } on ClerkApiException catch (error) {
      emit(SessionState.unavailable(error: error));
    }
  }

  Future<void> _enter(AuthUser user, Emitter<SessionState> emit) async {
    try {
      // As on the web: seed the phone's language only for a brand-new user.
      final viewer = await _session.viewer();
      await _session.store(
        email: user.email,
        name: user.fullName.isEmpty ? user.email : user.fullName,
        locale: viewer == null ? _currentLanguage() : null,
      );
      final memberships = await _session.memberships();
      if (memberships.isEmpty) {
        // Unlike the web, never auto-create a landlord org here: a tenant
        // who signs up before entering their code would become a landlord.
        emit(SessionState.onboarding(user: user));
        return;
      }
      emit(_readyState(user, memberships));
      unawaited(_push.register(_session));
    } on ConvexAuthException {
      await _auth.signOut();
      emit(const SessionState.signedOut(expired: true));
    } on ConvexException catch (error) {
      emit(SessionState.unavailable(error: error));
    }
  }

  Future<void> _onMembershipsChanged(
    SessionMembershipsChanged event,
    Emitter<SessionState> emit,
  ) async {
    final user = switch (state) {
      SessionOnboarding(:final user) => user,
      SessionReady(:final user) => user,
      _ => null,
    };
    if (user != null) await _enter(user, emit);
  }

  Future<void> _onRoleSwitched(
    SessionRoleSwitched event,
    Emitter<SessionState> emit,
  ) async {
    final current = state;
    if (current is! SessionReady || !current.canSwitchRole) return;
    await _prefs.setString(_roleKey, event.role.name);
    emit(current.copyWith(role: event.role));
  }

  Future<void> _onSignOut(
    SessionSignOutRequested event,
    Emitter<SessionState> emit,
  ) async {
    // Unregister first: it needs the session that sign-out ends.
    await _push.unregister(_session);
    await _auth.signOut();
    await _prefs.remove(_roleKey);
    emit(const SessionState.signedOut());
  }

  Future<void> _onExpired(
    SessionExpiredEvent event,
    Emitter<SessionState> emit,
  ) async {
    if (state is SessionSignedOut) return;
    await _auth.signOut();
    emit(const SessionState.signedOut(expired: true));
  }

  SessionReady _readyState(AuthUser user, List<Membership> memberships) {
    final landlordOrgs = memberships.where((m) => m.role.isLandlord).toList()
      // The org with the most in it, as `useLandlordOrg` does on the web.
      ..sort(
        (a, b) => (b.leaseCount + b.propertyCount).compareTo(
          a.leaseCount + a.propertyCount,
        ),
      );
    final landlordOrg = landlordOrgs.firstOrNull;
    final isTenant = memberships.any((m) => !m.role.isLandlord);
    final canSwitch = landlordOrg != null && isTenant;

    final saved = _prefs.getString(_roleKey);
    final role = landlordOrg == null
        ? AppRole.tenant
        : canSwitch && saved == AppRole.tenant.name
        ? AppRole.tenant
        : AppRole.landlord;

    return SessionReady(
      user: user,
      role: role,
      landlordOrg: landlordOrg,
      canSwitchRole: canSwitch,
    );
  }

  @override
  Future<void> close() async {
    await _expirySub.cancel();
    await super.close();
  }
}
