import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../../core/exception/failure.dart';
import '../../../../../../core/jde_auth/device_name.dart';
import '../../../../../../core/jde_auth/jde_session_storage.dart';
import '../../../../../../core/network/jde_dio_provider.dart';
import '../../../../../../core/network/jde_error_response.dart';
import '../api/order_to_be_shipped_api_service.dart';
import '../dto/order_shipment_confirmation_request.dart';
import '../dto/order_shipment_confirmation_updated_quantity_request.dart';
import '../dto/order_to_be_shipped_line.dart';
import '../dto/order_to_be_shipped_request.dart';
import '../dto/order_to_be_shipped_response.dart';
import '../dto/shipment_detail_line.dart';
import 'order_to_be_shipped_repository.dart';

part 'order_to_be_shipped_repository_impl.g.dart';

/// Concrete [OrderToBeShippedRepository]. Calls the JDE orchestrator and
/// normalizes both the JDE business-error shape and transport errors into a
/// [Failure].
class OrderToBeShippedRepositoryImpl implements OrderToBeShippedRepository {
  OrderToBeShippedRepositoryImpl(this._api, this._sessionStorage, this._dio);

  final OrderToBeShippedApiService _api;
  final JdeSessionStorage _sessionStorage;
  // Used directly (not through [_api]) only for confirmShipment, where the
  // raw HTTP status code decides success per spec, not just body shape.
  final Dio _dio;

  @override
  Future<Result<OrderToBeShippedResponse, Failure>> confirmOrderToBeShipped({
    required String pickNumber,
    required String orderType,
    required String orderCompany,
  }) async {
    try {
      final deviceName = await resolveDeviceName();
      final token = await _sessionStorage.readToken() ?? '';
      final raw = await _api.confirmOrderToBeShipped(
        OrderToBeShippedRequest(
          deviceName: deviceName,
          pickNumber: pickNumber,
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

  @override
  Future<Result<void, Failure>> confirmShipment({
    required String pickSlipNumber,
    required String orderType,
    required String orderCompany,
  }) async {
    try {
      final deviceName = await resolveDeviceName();
      final token = await _sessionStorage.readToken() ?? '';
      final response = await _dio.post<dynamic>(
        'JDE_ORCH_56_OrderShipmentConfirmation',
        data: OrderShipmentConfirmationRequest(
          deviceName: deviceName,
          pickSlipNumber: pickSlipNumber,
          orderType: orderType,
          orderCompany: orderCompany,
          token: token,
        ).toJson(),
      );

      final json = _asJsonMap(response.data);
      if (_looksLikeJdeError(json)) {
        return Error(_mapJdeError(JdeErrorResponse.fromJson(json), response.statusCode));
      }
      if (response.statusCode == 200) {
        return const Success(null);
      }
      return Error(
        Failure(
          message: 'Confirmation failed${response.statusCode != null ? ' (${response.statusCode})' : ''}.',
          statusCode: response.statusCode,
        ),
      );
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

  @override
  Future<Result<void, Failure>> confirmShipmentWithUpdatedQuantities({
    required String pickSlipNumber,
    required String orderType,
    required String orderCompany,
    required List<OrderToBeShippedLine> lines,
  }) async {
    try {
      final deviceName = await resolveDeviceName();
      final token = await _sessionStorage.readToken() ?? '';
      final response = await _dio.post<dynamic>(
        'JDE_ORCH_56_OrderShipmentConfirmationUpdatedQua',
        data: OrderShipmentConfirmationUpdatedQuantityRequest(
          deviceName: deviceName,
          companyKeyOrderNo: orderCompany,
          pickSlipNumber: pickSlipNumber,
          orderType: orderType,
          shipmentDetails: [
            for (final line in lines)
              ShipmentDetailLine(
                // JDE wants line numbers zero-padded to 3 decimals as a
                // string (e.g. 1.2 → "1.200"), not the raw num.
                lineNumber: (line.lineNumber ?? 0).toStringAsFixed(3),
                itemNumber: line.itemNumber ?? '',
                quantityShipped: '${line.quantityShipped ?? 0}',
                // Each line now carries its own order number (the request
                // is keyed by pick number at the top level instead).
                orderNumber: '${line.orderNumber ?? ''}',
              ),
          ],
          token: token,
        ).toJson(),
      );

      final json = _asJsonMap(response.data);
      if (_looksLikeJdeError(json)) {
        return Error(_mapJdeError(JdeErrorResponse.fromJson(json), response.statusCode));
      }
      if (response.statusCode == 200) {
        return const Success(null);
      }
      return Error(
        Failure(
          message: 'Confirmation failed${response.statusCode != null ? ' (${response.statusCode})' : ''}.',
          statusCode: response.statusCode,
        ),
      );
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
    ref.watch(jdeDioProvider),
  );
}
