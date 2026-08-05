import 'package:freezed_annotation/freezed_annotation.dart';

import 'shipment_detail_line.dart';

part 'order_shipment_confirmation_updated_quantity_request.freezed.dart';
part 'order_shipment_confirmation_updated_quantity_request.g.dart';

/// Request body for `JDE_ORCH_56_OrderShipmentConfirmationUpdatedQua`.
///
/// Used instead of the plain `JDE_ORCH_56_OrderShipmentConfirmation` call
/// whenever the user edited any line's shipped quantity — every line (edited
/// or not) must be included, not just the changed ones.
///
/// [deviceName]/[token] aren't in the sample body given for this endpoint,
/// but every sibling JDE call in this app requires them in the body (not
/// just the `Authorization` header) — included here to match; drop them if
/// this endpoint turns out not to need them.
@freezed
class OrderShipmentConfirmationUpdatedQuantityRequest
    with _$OrderShipmentConfirmationUpdatedQuantityRequest {
  const factory OrderShipmentConfirmationUpdatedQuantityRequest({
    required String deviceName,
    @JsonKey(name: 'CompanyKeyOrderNo') required String companyKeyOrderNo,
    @JsonKey(name: 'Pick_Slip_Number') required String pickSlipNumber,
    @JsonKey(name: 'OrderType') required String orderType,
    @JsonKey(name: 'ShipmentDetails') required List<ShipmentDetailLine> shipmentDetails,
    required String token,
  }) = _OrderShipmentConfirmationUpdatedQuantityRequest;

  factory OrderShipmentConfirmationUpdatedQuantityRequest.fromJson(Map<String, dynamic> json) =>
      _$OrderShipmentConfirmationUpdatedQuantityRequestFromJson(json);
}
