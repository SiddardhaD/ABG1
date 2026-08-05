// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipment_detail_line.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShipmentDetailLineImpl _$$ShipmentDetailLineImplFromJson(
  Map<String, dynamic> json,
) => _$ShipmentDetailLineImpl(
  lineNumber: json['LineNumber'] as String,
  itemNumber: json['ItemNumber'] as String,
  quantityShipped: json['QuantityShipped'] as String,
  orderNumber: json['OrderNumber'] as String,
);

Map<String, dynamic> _$$ShipmentDetailLineImplToJson(
  _$ShipmentDetailLineImpl instance,
) => <String, dynamic>{
  'LineNumber': instance.lineNumber,
  'ItemNumber': instance.itemNumber,
  'QuantityShipped': instance.quantityShipped,
  'OrderNumber': instance.orderNumber,
};
