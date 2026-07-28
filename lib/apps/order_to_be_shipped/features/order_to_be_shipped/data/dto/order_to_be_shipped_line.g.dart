// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_to_be_shipped_line.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderToBeShippedLineImpl _$$OrderToBeShippedLineImplFromJson(
  Map<String, dynamic> json,
) => _$OrderToBeShippedLineImpl(
  orderCompany: json['OrderCompany'] as String?,
  orderNumber: json['OrderNumber'] as num?,
  orderType: json['OrderType'] as String?,
  lineNumber: json['LineNumber'] as num?,
  businessUnit: json['BusinessUnit'] as String?,
  addressNumber: json['AddressNumber'] as num?,
  addressNumberDescription: json['AddressNumber_Desc'] as String?,
  shipTo: json['ShipTo'] as num?,
  shipToDescription: json['ShipTo_Desc'] as String?,
  itemNumber: json['ItemNumber'] as String?,
  itemNumberDescription: json['ItemNumber_Desc'] as String?,
  location: json['Location'] as String?,
  lotSerialNumber: json['LotSerialNumber'] as String?,
  lineType: json['LineType'] as String?,
  nextStat: json['NextStat'] as String?,
  nextStatDescription: json['NextStat_Desc'] as String?,
  lastStat: json['LastStat'] as String?,
  lastStatDescription: json['LastStat_Desc'] as String?,
  uom: json['UOM'] as String?,
  quantityOrdered: json['QuantityOrdered'] as num?,
  quantityShipped: json['QuantityShipped'] as num?,
  quantityBackordered: json['QuantityBackordered'] as num?,
  quantityCanceled: json['QuantityCanceled'] as num?,
  containerId: json['ContainerI.D.'] as String?,
  secUm: json['SecUM'] as String?,
  carrierNumber: json['CarrierNumber'] as num?,
);

Map<String, dynamic> _$$OrderToBeShippedLineImplToJson(
  _$OrderToBeShippedLineImpl instance,
) => <String, dynamic>{
  'OrderCompany': instance.orderCompany,
  'OrderNumber': instance.orderNumber,
  'OrderType': instance.orderType,
  'LineNumber': instance.lineNumber,
  'BusinessUnit': instance.businessUnit,
  'AddressNumber': instance.addressNumber,
  'AddressNumber_Desc': instance.addressNumberDescription,
  'ShipTo': instance.shipTo,
  'ShipTo_Desc': instance.shipToDescription,
  'ItemNumber': instance.itemNumber,
  'ItemNumber_Desc': instance.itemNumberDescription,
  'Location': instance.location,
  'LotSerialNumber': instance.lotSerialNumber,
  'LineType': instance.lineType,
  'NextStat': instance.nextStat,
  'NextStat_Desc': instance.nextStatDescription,
  'LastStat': instance.lastStat,
  'LastStat_Desc': instance.lastStatDescription,
  'UOM': instance.uom,
  'QuantityOrdered': instance.quantityOrdered,
  'QuantityShipped': instance.quantityShipped,
  'QuantityBackordered': instance.quantityBackordered,
  'QuantityCanceled': instance.quantityCanceled,
  'ContainerI.D.': instance.containerId,
  'SecUM': instance.secUm,
  'CarrierNumber': instance.carrierNumber,
};
