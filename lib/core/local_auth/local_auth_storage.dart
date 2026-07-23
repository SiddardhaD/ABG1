import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../config/app_flavor.dart';
import '../config/app_flavor_provider.dart';

part 'local_auth_storage.g.dart';

/// Locally stored username/password credentials for a single app.
typedef LocalCredentials = ({String username, String password});

/// Local-only credential store — there is no backend for this login.
///
/// Every key is namespaced with [AppFlavor.id], so each of the multi-app
/// flavors keeps a fully separate "DB" on the same device; clearing one
/// app's session (via [clear]) never touches another app's stored
/// credentials, even though they share the same underlying secure storage
/// plugin.
class LocalAuthStorage {
  LocalAuthStorage(this._storage, this._flavor);

  final FlutterSecureStorage _storage;
  final AppFlavor _flavor;

  String get _usernameKey => '${_flavor.id}.local_auth.username';
  String get _passwordKey => '${_flavor.id}.local_auth.password';
  String get _sessionKey => '${_flavor.id}.local_auth.logged_in';

  Future<bool> hasSession() async => (await _storage.read(key: _sessionKey)) == 'true';

  /// The credentials set up on this device for this app, or `null` if none
  /// have been created yet.
  Future<LocalCredentials?> readCredentials() async {
    final username = await _storage.read(key: _usernameKey);
    final password = await _storage.read(key: _passwordKey);
    if (username == null || password == null) return null;
    return (username: username, password: password);
  }

  Future<void> saveCredentials({required String username, required String password}) async {
    await _storage.write(key: _usernameKey, value: username);
    await _storage.write(key: _passwordKey, value: password);
  }

  Future<void> markSignedIn() => _storage.write(key: _sessionKey, value: 'true');

  /// Clears this app's credentials and session — other flavors' keys are
  /// untouched.
  Future<void> clear() async {
    await _storage.delete(key: _usernameKey);
    await _storage.delete(key: _passwordKey);
    await _storage.delete(key: _sessionKey);
  }
}

@Riverpod(keepAlive: true)
LocalAuthStorage localAuthStorage(Ref ref) {
  return LocalAuthStorage(
    const FlutterSecureStorage(
      aOptions: AndroidOptions(encryptedSharedPreferences: true),
    ),
    ref.watch(appFlavorProvider),
  );
}
