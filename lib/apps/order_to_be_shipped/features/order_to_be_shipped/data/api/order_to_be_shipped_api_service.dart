import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../../core/network/jde_dio_provider.dart';

part 'order_to_be_shipped_api_service.g.dart';

/// Retrofit definition of the JDE orchestrator endpoint. Same host as the
/// Location Availability Inquiry app (shared [jdeDioProvider] baseUrl),
/// different orchestrator operation.
///
/// Returns raw `dynamic` (decoded JSON): the success payload shape isn't
/// finalized yet, and errors need to be inspected before deciding which DTO
/// to parse into (see [OrderToBeShippedRepositoryImpl]).
@RestApi()
abstract class OrderToBeShippedApiService {
  factory OrderToBeShippedApiService(Dio dio) = _OrderToBeShippedApiService;

  @POST('JDE_ORCH_56_OrderToBeShipped')
  Future<dynamic> confirmOrderToBeShipped(@Body() Map<String, dynamic> body);
}

@Riverpod(keepAlive: true)
OrderToBeShippedApiService orderToBeShippedApiService(Ref ref) {
  return OrderToBeShippedApiService(ref.watch(jdeDioProvider));
}
