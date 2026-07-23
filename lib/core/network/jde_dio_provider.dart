import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../config/app_config.dart';
import 'interceptors/connectivity_interceptor.dart';

part 'jde_dio_provider.g.dart';

/// [Dio] instance for JDE Orchestrator endpoints.
///
/// Separate from [dioProvider] because JDE uses static Basic Auth
/// credentials, not the app's Bearer session token.
@Riverpod(keepAlive: true)
Dio jdeDio(Ref ref) {
  final credentials = base64Encode(
    utf8.encode('${AppConfig.jdeBasicAuthUsername}:${AppConfig.jdeBasicAuthPassword}'),
  );

  final dio = Dio(
    BaseOptions(
      baseUrl: AppConfig.jdeBaseUrl,
      connectTimeout: AppConfig.connectTimeout,
      receiveTimeout: AppConfig.receiveTimeout,
      sendTimeout: AppConfig.sendTimeout,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Basic $credentials',
      },
    ),
  );

  dio.interceptors.addAll([
    ConnectivityInterceptor(),
    if (kDebugMode)
      LogInterceptor(
        requestBody: true,
        responseBody: true,
        logPrint: (obj) => debugPrint(obj.toString()),
      ),
  ]);

  return dio;
}
