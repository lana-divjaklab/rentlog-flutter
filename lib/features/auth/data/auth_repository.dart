import 'dart:async';
import 'dart:convert';

import 'package:rentlog/core/auth/clerk_api.dart';
import 'package:rentlog/core/convex/convex_client.dart';
import 'package:rentlog/core/log.dart';
import 'package:rentlog/features/auth/data/auth_models.dart';

/// Why a sign-in or sign-up step failed, in terms the UI can word.
enum AuthFailure {
  invalidEmail,
  invalidCode,
  noAccount,
  accountExists,
  passwordTooShort,
  passwordPwned,
  signUpBlocked,
  network,
  unknown,
}

class AuthException implements Exception {
  const AuthException(this.failure, [this.detail]);

  final AuthFailure failure;

  /// Clerk's own message, for failures we have no wording of our own for.
  final String? detail;

  @override
  String toString() => 'AuthException($failure, $detail)';
}

class AuthRepository implements ConvexTokenProvider {
  AuthRepository({required this._clerk});

  final ClerkApi _clerk;

  String? _sessionId;
  String? _token;
  DateTime? _tokenExpiry;

  final _signedOut = StreamController<void>.broadcast();

  /// Fires when the session disappears underneath the app (revoked on
  /// another device, expired), so the router can return to sign-in.
  Stream<void> get signedOut => _signedOut.stream;

  /// Picks up the session from the last launch, if it is still alive.
  Future<AuthUser?> restore() async {
    try {
      final session = await _clerk.activeSession();
      if (session == null) return null;
      _sessionId = session.id;
      return _userFrom(session.user);
    } on ClerkApiException catch (e) {
      // Offline at launch: keep the stored client and let the next call retry.
      if (e.isNetwork) rethrow;
      return null;
    }
  }

  // --- Sign in -------------------------------------------------------------

  Future<PendingVerification> startSignIn(String email) async {
    try {
      final attempt = await _clerk.createSignIn(email);
      final emailAddressId = attempt.emailAddressId;
      if (emailAddressId == null) {
        // The account exists but email codes aren't offered for it.
        final why = 'no email_code factor offered (status ${attempt.status})';
        logError('Sign-in', why);
        throw AuthException(AuthFailure.unknown, why);
      }
      await _clerk.prepareSignInEmailCode(
        signInId: attempt.id,
        emailAddressId: emailAddressId,
      );
      return PendingVerification.signIn(
        attemptId: attempt.id,
        emailAddressId: emailAddressId,
        email: email,
      );
    } on ClerkApiException catch (e) {
      throw _map(e);
    }
  }

  // --- Sign up -------------------------------------------------------------

  Future<PendingVerification> startSignUp({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  }) async {
    try {
      final attempt = await _clerk.createSignUp(
        email: email,
        password: password,
        firstName: firstName,
        lastName: lastName,
      );
      await _clerk.prepareSignUpEmailCode(attempt.id);
      return PendingVerification.signUp(attemptId: attempt.id, email: email);
    } on ClerkApiException catch (e) {
      throw _map(e);
    }
  }

  // --- Shared --------------------------------------------------------------

  Future<void> resendCode(PendingVerification pending) async {
    try {
      switch (pending) {
        case PendingSignIn(:final attemptId, :final emailAddressId):
          await _clerk.prepareSignInEmailCode(
            signInId: attemptId,
            emailAddressId: emailAddressId,
          );
        case PendingSignUp(:final attemptId):
          await _clerk.prepareSignUpEmailCode(attemptId);
      }
    } on ClerkApiException catch (e) {
      throw _map(e);
    }
  }

  Future<AuthUser> verifyCode(PendingVerification pending, String code) async {
    try {
      final attempt = switch (pending) {
        PendingSignIn(:final attemptId) => await _clerk.attemptSignInEmailCode(
          signInId: attemptId,
          code: code,
        ),
        PendingSignUp(:final attemptId) => await _clerk.attemptSignUpEmailCode(
          signUpId: attemptId,
          code: code,
        ),
      };
      if (!attempt.isComplete) {
        // Clerk wants something the app doesn't collect (e.g. a new
        // required field added in the dashboard).
        final why =
            'status ${attempt.status}, session ${attempt.createdSessionId}, missing ${attempt.missingFields}';
        logError('Code verification', why);
        throw AuthException(AuthFailure.unknown, why);
      }
      final session = await _clerk.activeSession();
      if (session == null) {
        const why = 'completed but Clerk returned no active session';
        logError('Code verification', why);
        throw const AuthException(AuthFailure.unknown, why);
      }
      // Signed in only counts once Convex can be reached with it: fetch the
      // Convex token now, so a Clerk problem shows up here, on the code
      // screen, rather than as a failure on every screen after it.
      final jwt = await _clerk.sessionToken(session.id);
      _sessionId = session.id;
      _token = jwt;
      _tokenExpiry = _expiryOf(jwt);
      return _userFrom(session.user);
    } on ClerkApiException catch (e) {
      throw _map(e);
    }
  }

  Future<void> signOut() async {
    _sessionId = null;
    _token = null;
    _tokenExpiry = null;
    try {
      await _clerk.signOut();
    } on ClerkApiException {
      // The local token is gone either way; the server session will expire.
    }
  }

  // --- Convex tokens -------------------------------------------------------

  @override
  Future<String?> convexToken({bool forceRefresh = false}) async {
    final sessionId = _sessionId;
    if (sessionId == null) return null;

    final expiry = _tokenExpiry;
    if (!forceRefresh &&
        _token != null &&
        expiry != null &&
        DateTime.now().isBefore(expiry.subtract(const Duration(seconds: 10)))) {
      return _token;
    }

    try {
      final jwt = await _clerk.sessionToken(sessionId);
      _token = jwt;
      _tokenExpiry = _expiryOf(jwt);
      return jwt;
    } on ClerkApiException catch (e) {
      // Never carry on without a token: Convex would run the call as a
      // stranger and fail with a meaningless "not authenticated".
      _token = null;
      logError('Clerk session token (${e.code})', e.message);
      if (_sessionGone(e)) {
        _sessionId = null;
        _signedOut.add(null);
      }
      rethrow;
    }
  }

  /// Clerk answers this way when the session was ended or expired — on
  /// another device, by an admin, or by time.
  static bool _sessionGone(ClerkApiException e) =>
      e.code == 'resource_not_found' ||
      e.code == 'authentication_invalid' ||
      e.code == 'http_401' ||
      e.code == 'http_404';

  static DateTime? _expiryOf(String jwt) {
    final parts = jwt.split('.');
    if (parts.length != 3) return null;
    try {
      final payload = jsonDecode(
        utf8.decode(base64Url.decode(base64Url.normalize(parts[1]))),
      );
      final exp = (payload as Map<String, dynamic>)['exp'];
      return exp is num
          ? DateTime.fromMillisecondsSinceEpoch(exp.toInt() * 1000)
          : null;
    } on FormatException {
      return null;
    }
  }

  static AuthUser _userFrom(ClerkUser user) => AuthUser(
    id: user.id,
    email: user.email,
    firstName: user.firstName,
    lastName: user.lastName,
  );

  static AuthException _map(ClerkApiException e) {
    logError('Clerk ${e.code}', e.message);
    final detail = '${e.code}: ${e.message}';
    if (e.isNetwork) return AuthException(AuthFailure.network, detail);
    final failure = switch (e.code) {
      'form_identifier_not_found' => AuthFailure.noAccount,
      'form_param_format_invalid' || 'form_param_nil' => AuthFailure.invalidEmail,
      'form_code_incorrect' ||
      'verification_failed' ||
      'verification_expired' => AuthFailure.invalidCode,
      'form_identifier_exists' => AuthFailure.accountExists,
      'form_password_length_too_short' => AuthFailure.passwordTooShort,
      'form_password_pwned' => AuthFailure.passwordPwned,
      final code when code.startsWith('captcha') => AuthFailure.signUpBlocked,
      _ => AuthFailure.unknown,
    };
    return AuthException(failure, detail);
  }
}
