import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../../core/exception/failure.dart';
import '../api/item_availability_api_service.dart';
import '../dto/item_availability_request.dart';
import '../dto/item_availability_response.dart';
import '../dto/jde_error_response.dart';
import 'item_availability_repository.dart';

part 'item_availability_repository_impl.g.dart';

/// Concrete [ItemAvailabilityRepository]. Calls the JDE orchestrator and
/// normalizes both the JDE business-error shape and transport errors into a
/// [Failure].
class ItemAvailabilityRepositoryImpl implements ItemAvailabilityRepository {
  ItemAvailabilityRepositoryImpl(this._api);

  final ItemAvailabilityApiService _api;

  @override
  Future<Result<ItemAvailabilityResponse, Failure>> getItemAvailability({
    required String businessUnit,
    required String location,
  }) async {
    try {
      final raw = await _api.getItemAvailability(
        ItemAvailabilityRequest(businessUnit: businessUnit, location: location).toJson(),
      );
      final json = _asJsonMap(raw);

      if (_looksLikeJdeError(json)) {
        return Error(_mapJdeError(JdeErrorResponse.fromJson(json), null));
      }
      return Success(ItemAvailabilityResponse.fromJson(json));
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
      message: (error.jdeSimpleMessage ?? error.message ?? 'Request failed.').trim(),
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
ItemAvailabilityRepository itemAvailabilityRepository(Ref ref) {
  return ItemAvailabilityRepositoryImpl(ref.watch(itemAvailabilityApiServiceProvider));
}
