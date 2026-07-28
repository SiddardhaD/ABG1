import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../../core/exception/failure.dart';
import '../../../../../../core/jde_auth/device_name.dart';
import '../../../../../../core/jde_auth/jde_session_storage.dart';
import '../../../../../../core/network/jde_error_response.dart';
import '../api/order_to_be_shipped_api_service.dart';
import '../dto/order_to_be_shipped_request.dart';
import '../dto/order_to_be_shipped_response.dart';
import 'order_to_be_shipped_repository.dart';

part 'order_to_be_shipped_repository_impl.g.dart';

/// Concrete [OrderToBeShippedRepository]. Calls the JDE orchestrator and
/// normalizes both the JDE business-error shape and transport errors into a
/// [Failure].
class OrderToBeShippedRepositoryImpl implements OrderToBeShippedRepository {
  OrderToBeShippedRepositoryImpl(this._api, this._sessionStorage);

  final OrderToBeShippedApiService _api;
  final JdeSessionStorage _sessionStorage;

  @override
  Future<Result<OrderToBeShippedResponse, Failure>> confirmOrderToBeShipped({
    required String orderNumber,
    required String orderType,
    required String orderCompany,
  }) async {
    try {
      final deviceName = await resolveDeviceName();
      final token = await _sessionStorage.readToken() ?? '';
      final raw = await _api.confirmOrderToBeShipped(
        OrderToBeShippedRequest(
          deviceName: deviceName,
          orderNumber: orderNumber,
          orderType: orderType,
          orderCompany: orderCompany,
          token: token,
        ).toJson(),
      );
      final json = _asJsonMap(raw);

      if (_looksLikeJdeError(json)) {
        return Error(_mapJdeError(JdeErrorResponse.fromJson(json), null));
      }
      return Success(OrderToBeShippedResponse.fromJson(json));
    } on DioException catch (e, st) {
      final data = e.response?.data;
      if (data is Map) {
        final json = _asJsonMap(data);
        if (_looksLikeJdeError(json)) {
          return Error(_mapJdeError(JdeErrorResponse.fromJson(json), e.response?.statusCode));
        }
      }
      return Error(_mapDioError(e, st));
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

  Failure _mapDioError(DioException e, StackTrace st) {
    if (e.type == DioExceptionType.connectionError ||
        e.type == DioExceptionType.connectionTimeout ||
        e.type == DioExceptionType.receiveTimeout ||
        e.type == DioExceptionType.sendTimeout) {
      return const Failure.network();
    }
    final status = e.response?.statusCode;
    return Failure(
      message: 'Request failed${status != null ? ' ($status)' : ''}.',
      statusCode: status,
      stackTrace: st,
    );
  }
}

@Riverpod(keepAlive: true)
OrderToBeShippedRepository orderToBeShippedRepository(Ref ref) {
  return OrderToBeShippedRepositoryImpl(
    ref.watch(orderToBeShippedApiServiceProvider),
    ref.watch(jdeSessionStorageProvider),
  );
}
