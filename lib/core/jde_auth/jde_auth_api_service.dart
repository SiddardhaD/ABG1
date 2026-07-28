import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../network/jde_dio_provider.dart';

part 'jde_auth_api_service.g.dart';

/// Hand-written (not Retrofit-generated): login needs to skip the Bearer
/// token interceptor via [skipJdeAuthExtraKey] (there's no token yet), and
/// logout's success is judged by raw HTTP status rather than body shape —
/// both are simplest with direct [Dio] access to the [Response].
class JdeAuthApiService {
  JdeAuthApiService(this._dio);

  final Dio _dio;

  Future<Response<dynamic>> login(Map<String, dynamic> body) {
    return _dio.post<dynamic>(
      'jde-login',
      data: body,
      options: Options(extra: {skipJdeAuthExtraKey: true}),
    );
  }

  Future<Response<dynamic>> logout(Map<String, dynamic> body) {
    return _dio.post<dynamic>('jde-logout', data: body);
  }
}

@Riverpod(keepAlive: true)
JdeAuthApiService jdeAuthApiService(Ref ref) {
  return JdeAuthApiService(ref.watch(jdeDioProvider));
}
