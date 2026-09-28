import 'package:dio/dio.dart';
import 'package:rentlog/core/convex/convex_exception.dart';
import 'package:rentlog/core/log.dart';

/// Supplies the Clerk-issued JWT Convex verifies (`convex/auth.config.ts`).
abstract interface class ConvexTokenProvider {
  /// Null when nobody is signed in. [forceRefresh] skips any cached token,
  /// used once after Convex rejects one.
  Future<String?> convexToken({bool forceRefresh = false});
}

/// Calls Convex functions through its public HTTP API
/// (`POST /api/query|mutation|action`).
///
/// There is no live subscription as on the web: screens reload on
/// pull-to-refresh, on resume and when a push arrives.
class ConvexClient {
  ConvexClient({
    required String deploymentUrl,
    required this._tokens,
    Dio? dio,
  }) : _dio =
           dio ??
           Dio(
             BaseOptions(
               baseUrl: deploymentUrl,
               connectTimeout: const Duration(seconds: 15),
               receiveTimeout: const Duration(seconds: 30),
               contentType: Headers.jsonContentType,
               // Errors come back as a JSON body with a non-2xx status;
               // read it rather than letting Dio throw it away.
               validateStatus: (_) => true,
             ),
           );

  final Dio _dio;
  final ConvexTokenProvider _tokens;

  /// [path] is `"module:function"`, e.g. `"dashboard:tenantOverview"`.
  Future<Object?> query(String path, [Map<String, Object?> args = const {}]) =>
      _call('query', path, args);

  Future<Object?> mutation(String path, [Map<String, Object?> args = const {}]) =>
      _call('mutation', path, args);

  Future<Object?> action(String path, [Map<String, Object?> args = const {}]) =>
      _call('action', path, args);

  Future<Object?> _call(
    String kind,
    String path,
    Map<String, Object?> args, {
    bool isRetry = false,
  }) async {
    final token = await _tokens.convexToken(forceRefresh: isRetry);
    final Response<Object?> response;
    try {
      response = await _dio.post<Object?>(
        '/api/$kind',
        data: {'path': path, 'args': _withoutNulls(args), 'format': 'json'},
        options: Options(
          headers: {if (token != null) 'Authorization': 'Bearer $token'},
        ),
      );
    } on DioException catch (error) {
      throw ConvexNetworkException(error.message ?? error.type.name);
    }

    if (response.statusCode == 401) {
      logError('Convex $kind $path (401${isRetry ? ', after refresh' : ''})', response.data ?? '');
      // Clerk session tokens live a minute; one may expire in flight.
      if (!isRetry && token != null) {
        return await _call(kind, path, args, isRetry: true);
      }
      throw const ConvexAuthException('Unauthenticated');
    }

    final body = response.data;
    if (body is! Map<String, Object?>) {
      throw ConvexServerException('Unexpected response (${response.statusCode})');
    }
    if (body['status'] == 'success') {
      return body['value'];
    }
    final message = body['errorMessage']?.toString() ?? 'Unknown error';
    logError('Convex $kind $path (${response.statusCode})', message);
    throw _errorFrom(message);
  }

  static ConvexException _errorFrom(String message) {
    if (message.contains('UPGRADE_REQUIRED')) {
      return ConvexUpgradeRequiredException(message);
    }
    if (message.contains('Not authenticated')) {
      return ConvexAuthException(message);
    }
    return ConvexServerException(message);
  }

  /// Convex validators reject `null` for optional fields; they expect the
  /// key to be absent.
  static Map<String, Object?> _withoutNulls(Map<String, Object?> args) => {
    for (final entry in args.entries)
      if (entry.value != null) entry.key: entry.value,
  };
}

/// A Convex result that is a JSON object.
Map<String, dynamic> convexMap(Object? value) =>
    Map<String, dynamic>.from(value! as Map);

/// A Convex result that is an array of JSON objects.
List<Map<String, dynamic>> convexList(Object? value) =>
    (value! as List<Object?>).map(convexMap).toList();
