import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../config/app_config.dart';
import '../exception/failure.dart';
import '../network/jde_error_response.dart';
import 'device_name.dart';
import 'dto/jde_login_request.dart';
import 'dto/jde_login_response.dart';
import 'dto/jde_logout_request.dart';
import 'jde_auth_api_service.dart';
import 'jde_auth_repository.dart';

part 'jde_auth_repository_impl.g.dart';

class JdeAuthRepositoryImpl implements JdeAuthRepository {
  JdeAuthRepositoryImpl(this._api);

  final JdeAuthApiService _api;

  @override
  Future<Result<JdeLoginResponse, Failure>> login({
    required String username,
    required String password,
  }) async {
    try {
      final deviceName = await resolveDeviceName();
      final response = await _api.login(
        JdeLoginRequest(
          deviceName: deviceName,
          username: username,
          password: password,
          environment: AppConfig.jdeEnvironment,
        ).toJson(),
      );
      final json = _asJsonMap(response.data);

      if (_looksLikeJdeError(json)) {
        return Error(_mapJdeError(JdeErrorResponse.fromJson(json), response.statusCode));
      }

      final login = JdeLoginResponse.fromJson(json);
      if (login.userInfo.token.isEmpty) {
        return const Error(Failure(message: 'Login failed: no session token returned.'));
      }
      return Success(login);
    } on DioException catch (e, st) {
      return Error(_mapAuthError(e, st));
    } catch (e, st) {
      return Error(Failure(message: e.toString(), stackTrace: st));
    }
  }

  @override
  Future<Result<void, Failure>> logout() async {
    try {
      final deviceName = await resolveDeviceName();
      final response = await _api.logout(
        JdeLogoutRequest(deviceName: deviceName, environment: AppConfig.jdeEnvironment).toJson(),
      );
      if (response.statusCode == 200) {
        return const Success(null);
      }
      return Error(
        Failure(
          message: 'Logout failed${response.statusCode != null ? ' (${response.statusCode})' : ''}.',
          statusCode: response.statusCode,
        ),
      );
    } on DioException catch (e, st) {
      return Error(_mapAuthError(e, st));
    } catch (e, st) {
      return Error(Failure(message: e.toString(), stackTrace: st));
    }
  }

  Map<String, dynamic> _asJsonMap(dynamic raw) =>
      raw is Map<String, dynamic> ? raw : Map<String, dynamic>.from(raw as Map);

  bool _looksLikeJdeError(Map<String, dynamic> json) =>
      json['jde__status'] == 'ERROR' || json.containsKey('exception');

  Failure _mapJdeError(JdeErrorResponse error, int? statusCode) {
    return Failure(
      message: (error.jdeSimpleMessage ?? error.message?.toString() ?? 'Request failed.').trim(),
      statusCode: statusCode,
      code: error.exceptionId,
    );
  }

  Failure _mapAuthError(DioException e, StackTrace st) {
    if (e.type == DioExceptionType.connectionError ||
        e.type == DioExceptionType.connectionTimeout ||
        e.type == DioExceptionType.receiveTimeout ||
        e.type == DioExceptionType.sendTimeout) {
      return const Failure.network();
    }
    final data = e.response?.data;
    if (data is Map) {
      final json = _asJsonMap(data);
      if (_looksLikeJdeError(json)) {
        return _mapJdeError(JdeErrorResponse.fromJson(json), e.response?.statusCode);
      }
    }
    final status = e.response?.statusCode;
    return Failure(
      message: status == 401 || status == 403
          ? 'Invalid username or password.'
          : 'Request failed${status != null ? ' ($status)' : ''}.',
      statusCode: status,
      stackTrace: st,
    );
  }
}

@Riverpod(keepAlive: true)
JdeAuthRepository jdeAuthRepository(Ref ref) {
  return JdeAuthRepositoryImpl(ref.watch(jdeAuthApiServiceProvider));
}
