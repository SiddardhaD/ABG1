import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_availability_request.freezed.dart';
part 'item_availability_request.g.dart';

/// Request body for `JDE_ORCH_ItemAvailabilitybyLocation`.
@freezed
class ItemAvailabilityRequest with _$ItemAvailabilityRequest {
  const factory ItemAvailabilityRequest({
    @JsonKey(name: 'Business_Unit') required String businessUnit,
    @JsonKey(name: 'Location') required String location,
  }) = _ItemAvailabilityRequest;

  factory ItemAvailabilityRequest.fromJson(Map<String, dynamic> json) =>
      _$ItemAvailabilityRequestFromJson(json);
}
