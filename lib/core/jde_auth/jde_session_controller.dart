import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'jde_auth_repository_impl.dart';
import 'jde_session_state.dart';
import 'jde_session_storage.dart';

part 'jde_session_controller.g.dart';

/// Drives the real JDE login gate for a single app flavor. Restores the
/// session (token presence) from [JdeSessionStorage] on build, and handles
/// login/logout against [JdeAuthRepository].
@Riverpod(keepAlive: true)
class JdeSessionController extends _$JdeSessionController {
  @override
  JdeSessionState build() {
    _restore();
    return const JdeSessionState();
  }

  Future<void> _restore() async {
    final storage = ref.read(jdeSessionStorageProvider);
    final hasSession = await storage.hasSession();
    state = state.copyWith(
      status: hasSession ? JdeAuthStatus.authenticated : JdeAuthStatus.unauthenticated,
      username: hasSession ? await storage.readUsername() : null,
      alphaName: hasSession ? await storage.readAlphaName() : null,
    );
  }

  /// Returns true on success. On failure, `state.errorMessage` explains why.
  Future<bool> login({required String username, required String password}) async {
    if (username.trim().isEmpty || password.trim().isEmpty) {
      state = state.copyWith(errorMessage: 'Enter a username and password.');
      return false;
    }

    state = state.copyWith(isLoading: true, errorMessage: '');
    final result = await ref
        .read(jdeAuthRepositoryProvider)
        .login(username: username.trim(), password: password);

    return result.when(
      (login) async {
        await ref.read(jdeSessionStorageProvider).saveSession(
              token: login.userInfo.token,
              username: login.username,
              alphaName: login.userInfo.alphaName,
            );
        state = state.copyWith(
          isLoading: false,
          status: JdeAuthStatus.authenticated,
          username: login.username,
          alphaName: login.userInfo.alphaName,
        );
        return true;
      },
      (failure) {
        state = state.copyWith(
          isLoading: false,
          errorMessage: failure.messageOr('Login failed. Please try again.'),
        );
        return false;
      },
    );
  }

  /// Only clears the session and flips to unauthenticated when the logout
  /// call reports HTTP 200 — on failure the user stays logged in and
  /// `state.errorMessage` explains why, so the screen can surface it and
  /// let them retry instead of silently discarding an active session.
  Future<bool> logout() async {
    state = state.copyWith(isLoading: true, errorMessage: '');
    final result = await ref.read(jdeAuthRepositoryProvider).logout();

    return result.when(
      (_) async {
        await ref.read(jdeSessionStorageProvider).clear();
        state = const JdeSessionState(status: JdeAuthStatus.unauthenticated);
        return true;
      },
      (failure) {
        state = state.copyWith(
          isLoading: false,
          errorMessage: failure.messageOr('Logout failed. Please try again.'),
        );
        return false;
      },
    );
  }

  /// Called by [JdeAuthInterceptor] when a business call comes back with
  /// `E1LoginException` (JDE's "your token is no longer valid" signal) —
  /// no API call, just drop the stale local session so the router bounces
  /// straight to login instead of leaving the user stuck retrying requests
  /// that will keep failing the same way.
  Future<void> forceSignOut() async {
    await ref.read(jdeSessionStorageProvider).clear();
    state = const JdeSessionState(
      status: JdeAuthStatus.unauthenticated,
      errorMessage: 'Your session has expired. Please sign in again.',
    );
  }
}
