import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../jde_auth/jde_session_controller.dart';
import '../../jde_auth/jde_session_storage.dart';

/// Set this in a request's `extra` to skip attaching the JDE Bearer token
/// (used by the login call itself, which has no token yet):
///
///   dio.post(path, options: Options(extra: {skipJdeAuthExtraKey: true}));
const String skipJdeAuthExtraKey = 'skip_jde_auth';

/// JDE's exception class for "no longer authenticated" — covers both wrong
/// login credentials and an expired/invalid Bearer token. Seen verbatim in
/// both cases: `"Authorization Failure: Incorrect User ID or Password."`
/// (bad login) and `"Token Invalid: Please Request a new Token"` (expired
/// session on a business call).
const String _loginExceptionClass = 'E1LoginException';

/// Attaches `Authorization: Bearer <token>` to outgoing JDE orchestrator
/// requests, and force-signs-out the session when a business call reports
/// the token is no longer valid.
class JdeAuthInterceptor extends Interceptor {
  JdeAuthInterceptor(this._ref);

  final Ref _ref;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final skipAuth = options.extra[skipJdeAuthExtraKey] == true;
    if (!skipAuth) {
      final token = await _ref.read(jdeSessionStorageProvider).readToken();
      if (token != null && token.isNotEmpty) {
        options.headers['Authorization'] = 'Bearer $token';
      }
    }
    handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final skipAuth = err.requestOptions.extra[skipJdeAuthExtraKey] == true;
    // Don't force-sign-out on the login call itself — a 403/E1LoginException
    // there just means "wrong username/password", not "an active session
    // expired".
    if (!skipAuth) {
      final statusCode = err.response?.statusCode;
      final data = err.response?.data;
      final sessionExpired =
          statusCode == 403 || (data is Map && data['exception'] == _loginExceptionClass);
      if (sessionExpired) {
        await _ref.read(jdeSessionControllerProvider.notifier).forceSignOut();
      }
    }
    handler.next(err);
  }
}
