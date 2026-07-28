import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../config/app_flavor.dart';
import '../config/app_flavor_provider.dart';

part 'jde_session_storage.g.dart';

/// Persists the JDE session (Bearer token + display info) for a single app
/// flavor. Every key is namespaced with [AppFlavor.id], so each app's
/// session lives fully separate from every other app's on the same device.
class JdeSessionStorage {
  JdeSessionStorage(this._storage, this._flavor);

  final FlutterSecureStorage _storage;
  final AppFlavor _flavor;

  String get _tokenKey => '${_flavor.id}.jde_auth.token';
  String get _usernameKey => '${_flavor.id}.jde_auth.username';
  String get _alphaNameKey => '${_flavor.id}.jde_auth.alpha_name';

  Future<String?> readToken() => _storage.read(key: _tokenKey);

  Future<bool> hasSession() async {
    final token = await readToken();
    return token != null && token.isNotEmpty;
  }

  Future<void> saveSession({
    required String token,
    required String username,
    String? alphaName,
  }) async {
    await _storage.write(key: _tokenKey, value: token);
    await _storage.write(key: _usernameKey, value: username);
    if (alphaName != null) {
      await _storage.write(key: _alphaNameKey, value: alphaName);
    }
  }

  Future<String?> readUsername() => _storage.read(key: _usernameKey);

  Future<String?> readAlphaName() => _storage.read(key: _alphaNameKey);

  /// Clears this app's session only — other flavors' keys are untouched.
  Future<void> clear() async {
    await _storage.delete(key: _tokenKey);
    await _storage.delete(key: _usernameKey);
    await _storage.delete(key: _alphaNameKey);
  }
}

@Riverpod(keepAlive: true)
JdeSessionStorage jdeSessionStorage(Ref ref) {
  return JdeSessionStorage(
    const FlutterSecureStorage(
      aOptions: AndroidOptions(encryptedSharedPreferences: true),
    ),
    ref.watch(appFlavorProvider),
  );
}
