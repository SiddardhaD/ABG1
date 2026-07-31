import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_shipment_confirmation_request.freezed.dart';
part 'order_shipment_confirmation_request.g.dart';

/// Request body for `JDE_ORCH_56_OrderShipmentConfirmation` (the plain
/// confirmation call, used when no line's shipped quantity was edited).
///
/// Note the field name here — `Pick_Slip_Number` — is deliberately
/// different from `JDE_ORCH_56_OrderToBeShipped`'s `PickNumber`; JDE names
/// the same underlying value differently per endpoint.
@freezed
class OrderShipmentConfirmationRequest with _$OrderShipmentConfirmationRequest {
  const factory OrderShipmentConfirmationRequest({
    required String deviceName,
    @JsonKey(name: 'Pick_Slip_Number') required String pickSlipNumber,
    @JsonKey(name: 'Order_Company') required String orderCompany,
    @JsonKey(name: 'Order_Type') required String orderType,
    required String token,
  }) = _OrderShipmentConfirmationRequest;

  factory OrderShipmentConfirmationRequest.fromJson(Map<String, dynamic> json) =>
      _$OrderShipmentConfirmationRequestFromJson(json);
}
