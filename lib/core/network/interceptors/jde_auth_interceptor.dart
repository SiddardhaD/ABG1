import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../jde_auth/jde_session_storage.dart';

/// Set this in a request's `extra` to skip attaching the JDE Bearer token
/// (used by the login call itself, which has no token yet):
///
///   dio.post(path, options: Options(extra: {skipJdeAuthExtraKey: true}));
const String skipJdeAuthExtraKey = 'skip_jde_auth';

/// Attaches `Authorization: Bearer <token>` to outgoing JDE orchestrator
/// requests. Token is read fresh from [JdeSessionStorage] each request so it
/// always reflects the latest session (set right after `jde-login`).
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
}
