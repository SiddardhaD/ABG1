import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_to_be_shipped_request.freezed.dart';
part 'order_to_be_shipped_request.g.dart';

/// Request body for `JDE_ORCH_56_OrderToBeShipped`.
///
/// [deviceName] and [token] are sent in the body (not just the
/// `Authorization` header) — this endpoint specifically requires both.
@freezed
class OrderToBeShippedRequest with _$OrderToBeShippedRequest {
  const factory OrderToBeShippedRequest({
    required String deviceName,
    @JsonKey(name: 'Order_Number') required String orderNumber,
    @JsonKey(name: 'Order_Type') required String orderType,
    @JsonKey(name: 'Order_Company') required String orderCompany,
    required String token,
  }) = _OrderToBeShippedRequest;

  factory OrderToBeShippedRequest.fromJson(Map<String, dynamic> json) =>
      _$OrderToBeShippedRequestFromJson(json);
}
