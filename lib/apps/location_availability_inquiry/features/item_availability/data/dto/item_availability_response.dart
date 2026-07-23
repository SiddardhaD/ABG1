import 'package:freezed_annotation/freezed_annotation.dart';

import 'item_availability_result.dart';

part 'item_availability_response.freezed.dart';
part 'item_availability_response.g.dart';

/// Top-level success response from `JDE_ORCH_ItemAvailabilitybyLocation`.
@freezed
class ItemAvailabilityResponse with _$ItemAvailabilityResponse {
  const factory ItemAvailabilityResponse({
    @JsonKey(name: 'FR_ItemAvailability_1') required ItemAvailabilityResult result,
    @JsonKey(name: 'jde__status') required String jdeStatus,
    @JsonKey(name: 'jde__startTimestamp') String? jdeStartTimestamp,
    @JsonKey(name: 'jde__endTimestamp') String? jdeEndTimestamp,
    @JsonKey(name: 'jde__serverExecutionSeconds') double? jdeServerExecutionSeconds,
  }) = _ItemAvailabilityResponse;

  factory ItemAvailabilityResponse.fromJson(Map<String, dynamic> json) =>
      _$ItemAvailabilityResponseFromJson(json);
}
