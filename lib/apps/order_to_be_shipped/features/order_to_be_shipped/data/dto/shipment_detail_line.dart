import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipment_detail_line.freezed.dart';
part 'shipment_detail_line.g.dart';

/// One entry of `ShipmentDetails` on `JDE_ORCH_56_OrderShipmentConfirmationUpdatedQua`.
///
/// Note the JDE-side quirk: every field is a string, and [lineNumber] is
/// zero-padded to 3 decimals (e.g. line `1.2` → `"1.200"`).
@freezed
class ShipmentDetailLine with _$ShipmentDetailLine {
  const factory ShipmentDetailLine({
    @JsonKey(name: 'LineNumber') required String lineNumber,
    @JsonKey(name: 'ItemNumber') required String itemNumber,
    @JsonKey(name: 'QuantityShipped') required String quantityShipped,
  }) = _ShipmentDetailLine;

  factory ShipmentDetailLine.fromJson(Map<String, dynamic> json) =>
      _$ShipmentDetailLineFromJson(json);
}
