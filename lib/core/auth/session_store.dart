import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Keeps Clerk's native client token in the Keychain / Keystore. That token
/// is the whole signed-in state: with it, Clerk returns the active session.
class SessionStore {
  SessionStore([FlutterSecureStorage? storage])
    : _storage = storage ?? const FlutterSecureStorage();

  final FlutterSecureStorage _storage;

  static const _clientTokenKey = 'clerk_client_token';

  String? _cached;
  bool _loaded = false;

  Future<String?> clientToken() async {
    if (!_loaded) {
      _cached = await _storage.read(key: _clientTokenKey);
      _loaded = true;
    }
    return _cached;
  }

  Future<void> saveClientToken(String token) async {
    if (token == _cached) return;
    _cached = token;
    _loaded = true;
    await _storage.write(key: _clientTokenKey, value: token);
  }

  Future<void> clear() async {
    _cached = null;
    _loaded = true;
    await _storage.delete(key: _clientTokenKey);
  }
}
