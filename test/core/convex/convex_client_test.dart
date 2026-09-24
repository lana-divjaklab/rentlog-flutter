import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rentlog/core/convex/convex_client.dart';
import 'package:rentlog/core/convex/convex_exception.dart';

/// Answers each request from a queue and records what was sent.
class _FakeAdapter implements HttpClientAdapter {
  _FakeAdapter(this._responses);

  final List<(int, Map<String, Object?>)> _responses;
  final requests = <RequestOptions>[];
  final bodies = <Map<String, dynamic>>[];

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    requests.add(options);
    bodies.add(Map<String, dynamic>.from(options.data as Map));
    final (status, body) = _responses.removeAt(0);
    return ResponseBody.fromString(
      jsonEncode(body),
      status,
      headers: {
        Headers.contentTypeHeader: [Headers.jsonContentType],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}

class _Tokens implements ConvexTokenProvider {
  final forced = <bool>[];

  @override
  Future<String?> convexToken({bool forceRefresh = false}) async {
    forced.add(forceRefresh);
    return forceRefresh ? 'fresh' : 'stale';
  }
}

ConvexClient _client(_FakeAdapter adapter, _Tokens tokens) {
  final dio = Dio(
    BaseOptions(baseUrl: 'https://example.convex.cloud', validateStatus: (_) => true),
  )..httpClientAdapter = adapter;
  return ConvexClient(deploymentUrl: '', tokens: tokens, dio: dio);
}

void main() {
  test('posts path, args and json format, returning the value', () async {
    final adapter = _FakeAdapter([
      (200, {'status': 'success', 'value': 42}),
    ]);
    final tokens = _Tokens();
    final value = await _client(adapter, tokens).query('dashboard:tenantOverview', {
      'leaseId': 'l1',
      'optional': null,
    });

    expect(value, 42);
    expect(adapter.requests.single.path, '/api/query');
    expect(adapter.requests.single.headers['Authorization'], 'Bearer stale');
    expect(adapter.bodies.single, {
      'path': 'dashboard:tenantOverview',
      // Convex rejects null for optional args; they must be absent.
      'args': {'leaseId': 'l1'},
      'format': 'json',
    });
  });

  test('retries once with a fresh token after a 401', () async {
    final adapter = _FakeAdapter([
      (401, {'code': 'Unauthenticated'}),
      (200, {'status': 'success', 'value': 'ok'}),
    ]);
    final tokens = _Tokens();
    expect(await _client(adapter, tokens).mutation('users:store'), 'ok');
    expect(tokens.forced, [false, true]);
    expect(adapter.requests.last.headers['Authorization'], 'Bearer fresh');
  });

  test('a second 401 is an auth failure', () async {
    final adapter = _FakeAdapter([
      (401, {'code': 'Unauthenticated'}),
      (401, {'code': 'Unauthenticated'}),
    ]);
    expect(
      _client(adapter, _Tokens()).query('users:viewer'),
      throwsA(isA<ConvexAuthException>()),
    );
  });

  test('plan errors are recognised by their prefix', () async {
    final adapter = _FakeAdapter([
      (
        400,
        {
          'status': 'error',
          'errorMessage': 'Uncaught UpgradeRequiredError: UPGRADE_REQUIRED: autoEmails',
        },
      ),
    ]);
    expect(
      _client(adapter, _Tokens()).action('emailActions:sendUtilitiesEmail'),
      throwsA(isA<ConvexUpgradeRequiredException>()),
    );
  });

  test('other function errors are server errors', () async {
    final adapter = _FakeAdapter([
      (500, {'status': 'error', 'errorMessage': '[Request ID: x] Server Error'}),
    ]);
    expect(
      _client(adapter, _Tokens()).query('leases:list'),
      throwsA(isA<ConvexServerException>()),
    );
  });
}
