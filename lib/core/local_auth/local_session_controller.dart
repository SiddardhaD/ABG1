import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'local_auth_storage.dart';
import 'local_session_state.dart';

part 'local_session_controller.g.dart';

/// Drives the local (no-backend) login gate for a single app flavor.
///
/// There's no server to authenticate against: the first username/password
/// entered on a device becomes that app's account. Every later login
/// attempt must match what was saved. [logout] wipes it, so the next login
/// starts fresh — exactly like a first run.
@Riverpod(keepAlive: true)
class LocalSessionController extends _$LocalSessionController {
  @override
  LocalSessionState build() {
    _restore();
    return const LocalSessionState();
  }

  Future<void> _restore() async {
    final hasSession = await ref.read(localAuthStorageProvider).hasSession();
    state = state.copyWith(
      status: hasSession ? LocalAuthStatus.authenticated : LocalAuthStatus.unauthenticated,
    );
  }

  /// Returns true on success. On failure, `state.errorMessage` explains why.
  Future<bool> login({required String username, required String password}) async {
    if (username.trim().isEmpty || password.trim().isEmpty) {
      state = state.copyWith(errorMessage: 'Enter a username and password.');
      return false;
    }

    state = state.copyWith(isLoading: true, errorMessage: '');
    final storage = ref.read(localAuthStorageProvider);
    final existing = await storage.readCredentials();

    if (existing == null) {
      // First login on this device sets up the local account.
      await storage.saveCredentials(username: username, password: password);
      await storage.markSignedIn();
      state = state.copyWith(isLoading: false, status: LocalAuthStatus.authenticated);
      return true;
    }

    if (existing.username == username && existing.password == password) {
      await storage.markSignedIn();
      state = state.copyWith(isLoading: false, status: LocalAuthStatus.authenticated);
      return true;
    }

    state = state.copyWith(isLoading: false, errorMessage: 'Invalid username or password.');
    return false;
  }

  Future<void> logout() async {
    await ref.read(localAuthStorageProvider).clear();
    state = const LocalSessionState(status: LocalAuthStatus.unauthenticated);
  }
}
