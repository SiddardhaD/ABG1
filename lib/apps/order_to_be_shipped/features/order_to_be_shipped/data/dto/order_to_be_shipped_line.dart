import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_to_be_shipped_line.freezed.dart';
part 'order_to_be_shipped_line.g.dart';

/// One entry of the `OrderTobeShippedDetails` array — a single order line
/// (sub-lines like 1.1/1.2 appear as separate entries sharing the same
/// [orderNumber]).
@freezed
class OrderToBeShippedLine with _$OrderToBeShippedLine {
  const factory OrderToBeShippedLine({
    @JsonKey(name: 'OrderCompany') String? orderCompany,
    @JsonKey(name: 'OrderNumber') num? orderNumber,
    @JsonKey(name: 'OrderType') String? orderType,
    @JsonKey(name: 'LineNumber') num? lineNumber,
    @JsonKey(name: 'BusinessUnit') String? businessUnit,
    @JsonKey(name: 'AddressNumber') num? addressNumber,
    @JsonKey(name: 'AddressNumber_Desc') String? addressNumberDescription,
    @JsonKey(name: 'ShipTo') num? shipTo,
    @JsonKey(name: 'ShipTo_Desc') String? shipToDescription,
    @JsonKey(name: 'ItemNumber') String? itemNumber,
    @JsonKey(name: 'ItemNumber_Desc') String? itemNumberDescription,
    @JsonKey(name: 'Location') String? location,
    @JsonKey(name: 'LotSerialNumber') String? lotSerialNumber,
    @JsonKey(name: 'LineType') String? lineType,
    @JsonKey(name: 'NextStat') String? nextStat,
    @JsonKey(name: 'NextStat_Desc') String? nextStatDescription,
    @JsonKey(name: 'LastStat') String? lastStat,
    @JsonKey(name: 'LastStat_Desc') String? lastStatDescription,
    @JsonKey(name: 'UOM') String? uom,
    @JsonKey(name: 'QuantityOrdered') num? quantityOrdered,
    @JsonKey(name: 'QuantityShipped') num? quantityShipped,
    @JsonKey(name: 'QuantityBackordered') num? quantityBackordered,
    @JsonKey(name: 'QuantityCanceled') num? quantityCanceled,
    @JsonKey(name: 'ContainerI.D.') String? containerId,
    @JsonKey(name: 'SecUM') String? secUm,
    @JsonKey(name: 'CarrierNumber') num? carrierNumber,
  }) = _OrderToBeShippedLine;

  factory OrderToBeShippedLine.fromJson(Map<String, dynamic> json) =>
      _$OrderToBeShippedLineFromJson(json);
}
