import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:rentlog/core/auth/session_store.dart';

/// A Clerk Frontend API error, with Clerk's machine-readable [code]
/// (`form_code_incorrect`, `form_identifier_not_found`, …).
class ClerkApiException implements Exception {
  const ClerkApiException({required this.code, required this.message});

  final String code;
  final String message;

  bool get isNetwork => code == 'network_error';

  @override
  String toString() => 'ClerkApiException($code): $message';
}

class ClerkUser {
  const ClerkUser({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
  });

  factory ClerkUser.fromJson(Map<String, dynamic> json) {
    final primaryId = json['primary_email_address_id'];
    final emails = (json['email_addresses'] as List<dynamic>? ?? [])
        .cast<Map<String, dynamic>>();
    final primary = emails.firstWhere(
      (e) => e['id'] == primaryId,
      orElse: () => emails.isNotEmpty ? emails.first : const {},
    );
    return ClerkUser(
      id: json['id'] as String,
      email: primary['email_address'] as String? ?? '',
      firstName: json['first_name'] as String? ?? '',
      lastName: json['last_name'] as String? ?? '',
    );
  }

  final String id;
  final String email;
  final String firstName;
  final String lastName;

  String get fullName => '$firstName $lastName'.trim();
}

class ClerkSession {
  const ClerkSession({required this.id, required this.user});

  final String id;
  final ClerkUser user;
}

/// Where an in-progress sign-in or sign-up stands.
class ClerkAttempt {
  const ClerkAttempt({
    required this.id,
    required this.status,
    this.emailAddressId,
    this.createdSessionId,
    this.missingFields = const [],
  });

  final String id;
  final String status;
  final String? emailAddressId;
  final String? createdSessionId;
  final List<String> missingFields;

  bool get isComplete => status == 'complete' && createdSessionId != null;
}

/// Clerk's Frontend API in native mode (`_is_native=1`): no cookies, the
/// client token travels in the `Authorization` header both ways.
///
/// There is no stable Clerk SDK for Flutter, so this covers exactly the
/// flows the app uses: email-code sign-in, sign-up with an emailed code,
/// session tokens and sign-out.
class ClerkApi {
  ClerkApi({required String frontendApi, required this._store, Dio? dio})
    : _dio =
          dio ??
          Dio(
            BaseOptions(
              baseUrl: '$frontendApi/v1',
              connectTimeout: const Duration(seconds: 15),
              receiveTimeout: const Duration(seconds: 30),
              contentType: Headers.formUrlEncodedContentType,
              validateStatus: (_) => true,
            ),
          );

  final Dio _dio;
  final SessionStore _store;

  static const _native = {'_is_native': '1'};

  // --- Sign in -------------------------------------------------------------

  /// Starts a sign-in for [email]. Throws `form_identifier_not_found` when
  /// the address has no account, which the UI turns into a sign-up offer.
  Future<ClerkAttempt> createSignIn(String email) async {
    final body = await _request('POST', '/client/sign_ins', {'identifier': email});
    return _signInFrom(body);
  }

  Future<void> prepareSignInEmailCode({
    required String signInId,
    required String emailAddressId,
  }) => _request('POST', '/client/sign_ins/$signInId/prepare_first_factor', {
    'strategy': 'email_code',
    'email_address_id': emailAddressId,
  });

  Future<ClerkAttempt> attemptSignInEmailCode({
    required String signInId,
    required String code,
  }) async {
    final body = await _request(
      'POST',
      '/client/sign_ins/$signInId/attempt_first_factor',
      {'strategy': 'email_code', 'code': code},
    );
    return _signInFrom(body);
  }

  // --- Sign up -------------------------------------------------------------

  /// Everything the RentLOG Clerk instance requires at sign-up: names,
  /// password and terms consent. The address is confirmed with a code next.
  Future<ClerkAttempt> createSignUp({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  }) async {
    final body = await _request('POST', '/client/sign_ups', {
      'email_address': email,
      'password': password,
      'first_name': firstName,
      'last_name': lastName,
      'legal_accepted': 'true',
    });
    return _signUpFrom(body);
  }

  Future<void> prepareSignUpEmailCode(String signUpId) => _request(
    'POST',
    '/client/sign_ups/$signUpId/prepare_verification',
    {'strategy': 'email_code'},
  );

  Future<ClerkAttempt> attemptSignUpEmailCode({
    required String signUpId,
    required String code,
  }) async {
    final body = await _request(
      'POST',
      '/client/sign_ups/$signUpId/attempt_verification',
      {'strategy': 'email_code', 'code': code},
    );
    return _signUpFrom(body);
  }

  // --- Session -------------------------------------------------------------

  /// The session this phone is signed into, or null.
  Future<ClerkSession?> activeSession() async {
    if (await _store.clientToken() == null) return null;
    final body = await _request('GET', '/client');
    final client = body['response'];
    if (client is! Map<String, dynamic>) return null;
    return _sessionFrom(client);
  }

  /// A short-lived JWT from the `convex` template, which is what
  /// `convex/auth.config.ts` (applicationID "convex") accepts.
  Future<String> sessionToken(String sessionId) async {
    final body = await _request(
      'POST',
      '/client/sessions/$sessionId/tokens/convex',
    );
    final jwt = body['jwt'] ?? (body['response'] as Map?)?['jwt'];
    if (jwt is! String) {
      throw const ClerkApiException(
        code: 'token_missing',
        message: 'Clerk returned no session token',
      );
    }
    return jwt;
  }

  /// Ends every session on this phone's client and forgets it.
  Future<void> signOut() async {
    try {
      await _request('DELETE', '/client');
    } finally {
      await _store.clear();
    }
  }

  // --- Plumbing ------------------------------------------------------------

  Future<Map<String, dynamic>> _request(
    String method,
    String path, [
    Map<String, String>? form,
  ]) async {
    final token = await _store.clientToken();
    final Response<Object?> response;
    try {
      response = await _dio.request<Object?>(
        path,
        queryParameters: _native,
        data: form,
        options: Options(
          method: method,
          headers: {'Authorization': ?token},
        ),
      );
    } on DioException catch (error) {
      throw ClerkApiException(
        code: 'network_error',
        message: error.message ?? error.type.name,
      );
    }

    // Clerk rotates the client token; always keep the latest one.
    final rotated = response.headers.value('authorization');
    if (rotated != null && rotated.isNotEmpty) {
      await _store.saveClientToken(rotated);
    }

    final data = response.data is String
        ? jsonDecode(response.data! as String)
        : response.data;
    final body = data is Map<String, dynamic> ? data : <String, dynamic>{};
    final status = response.statusCode ?? 0;
    if (status >= 400) {
      final errors = (body['errors'] as List<dynamic>? ?? [])
          .cast<Map<String, dynamic>>();
      final first = errors.isNotEmpty ? errors.first : const <String, dynamic>{};
      throw ClerkApiException(
        code: first['code'] as String? ?? 'http_$status',
        message:
            first['long_message'] as String? ??
            first['message'] as String? ??
            'Clerk request failed ($status)',
      );
    }
    return body;
  }

  ClerkAttempt _signInFrom(Map<String, dynamic> body) {
    final signIn = body['response'] as Map<String, dynamic>;
    final factors = (signIn['supported_first_factors'] as List<dynamic>? ?? [])
        .cast<Map<String, dynamic>>();
    final emailCode = factors
        .where((f) => f['strategy'] == 'email_code')
        .firstOrNull;
    return ClerkAttempt(
      id: signIn['id'] as String,
      status: signIn['status'] as String,
      emailAddressId: emailCode?['email_address_id'] as String?,
      createdSessionId: signIn['created_session_id'] as String?,
    );
  }

  ClerkAttempt _signUpFrom(Map<String, dynamic> body) {
    final signUp = body['response'] as Map<String, dynamic>;
    return ClerkAttempt(
      id: signUp['id'] as String,
      status: signUp['status'] as String,
      createdSessionId: signUp['created_session_id'] as String?,
      missingFields: (signUp['missing_fields'] as List<dynamic>? ?? [])
          .cast<String>(),
    );
  }

  ClerkSession? _sessionFrom(Map<String, dynamic> client) {
    final activeId = client['last_active_session_id'] as String?;
    final sessions = (client['sessions'] as List<dynamic>? ?? [])
        .cast<Map<String, dynamic>>();
    final session = sessions
        .where((s) => s['id'] == activeId && s['status'] == 'active')
        .firstOrNull;
    if (session == null) return null;
    return ClerkSession(
      id: session['id'] as String,
      user: ClerkUser.fromJson(session['user'] as Map<String, dynamic>),
    );
  }
}
