import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../../core/network/jde_dio_provider.dart';

part 'item_availability_api_service.g.dart';

/// Retrofit definition of the JDE orchestrator endpoint.
///
/// Returns raw `dynamic` (decoded JSON) rather than a typed model: the
/// orchestrator sends the same HTTP status for both business-rule errors and
/// successes, so the repository decides which DTO to parse the body into.
@RestApi()
abstract class ItemAvailabilityApiService {
  factory ItemAvailabilityApiService(Dio dio) = _ItemAvailabilityApiService;

  @POST('JDE_ORCH_ItemAvailabilitybyLocation')
  Future<dynamic> getItemAvailability(@Body() Map<String, dynamic> body);
}

@Riverpod(keepAlive: true)
ItemAvailabilityApiService itemAvailabilityApiService(Ref ref) {
  return ItemAvailabilityApiService(ref.watch(jdeDioProvider));
}
