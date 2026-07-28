import 'package:freezed_annotation/freezed_annotation.dart';

import 'order_to_be_shipped_line.dart';

part 'order_to_be_shipped_response.freezed.dart';
part 'order_to_be_shipped_response.g.dart';

/// Top-level success response from `JDE_ORCH_56_OrderToBeShipped`.
@freezed
class OrderToBeShippedResponse with _$OrderToBeShippedResponse {
  const factory OrderToBeShippedResponse({
    @JsonKey(name: 'OrderTobeShippedDetails') @Default(<OrderToBeShippedLine>[]) List<OrderToBeShippedLine> lines,
    @JsonKey(name: 'jde__status') required String jdeStatus,
    @JsonKey(name: 'jde__startTimestamp') String? jdeStartTimestamp,
    @JsonKey(name: 'jde__endTimestamp') String? jdeEndTimestamp,
    @JsonKey(name: 'jde__serverExecutionSeconds') double? jdeServerExecutionSeconds,
  }) = _OrderToBeShippedResponse;

  factory OrderToBeShippedResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderToBeShippedResponseFromJson(json);
}
