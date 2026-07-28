import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../config/app_config.dart';
import 'interceptors/connectivity_interceptor.dart';
import 'interceptors/jde_auth_interceptor.dart';

export 'interceptors/jde_auth_interceptor.dart' show skipJdeAuthExtraKey;

part 'jde_dio_provider.g.dart';

/// [Dio] instance for JDE Orchestrator endpoints (login, logout, and every
/// business call). Auth is a Bearer token obtained from `jde-login` and
/// attached per-request by [JdeAuthInterceptor] — see that class for the
/// `skipJdeAuthExtraKey` escape hatch the login call itself uses.
@Riverpod(keepAlive: true)
Dio jdeDio(Ref ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: AppConfig.jdeBaseUrl,
      connectTimeout: AppConfig.connectTimeout,
      receiveTimeout: AppConfig.receiveTimeout,
      sendTimeout: AppConfig.sendTimeout,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ),
  );

  dio.interceptors.addAll([
    ConnectivityInterceptor(),
    JdeAuthInterceptor(ref),
    if (kDebugMode)
      LogInterceptor(
        requestBody: true,
        responseBody: true,
        logPrint: (obj) => debugPrint(obj.toString()),
      ),
  ]);

  return dio;
}
