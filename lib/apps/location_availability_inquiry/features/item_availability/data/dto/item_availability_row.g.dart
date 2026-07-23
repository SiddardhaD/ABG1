// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_availability_row.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemAvailabilityRowImpl _$$ItemAvailabilityRowImplFromJson(
  Map<String, dynamic> json,
) => _$ItemAvailabilityRowImpl(
  secondItemNumber: json['2nd Item Number'] as String?,
  thirdItemNumber: json['3rd Item Number'] as String?,
  description: json['Description'] as String?,
  lotExpirationDate: json['Lot Expiration Date'] as String?,
  lotManufacturingDate: json['Lot Manufacturing Date'] as String?,
  lotStatus: json['Lot Status'] as String?,
  lotSerial: json['Lot/Serial'] as String?,
  quantityAvailable: json['Quantity Available'] as num? ?? 0,
  quantityInbound: json['Quantity Inbound'] as num? ?? 0,
  quantityOnHand: json['Quantity On Hand'] as num? ?? 0,
  quantityOutbound: json['Quantity Outbound'] as num? ?? 0,
  secondaryUnitOfMeasure: json['Sec UM'] as String?,
  shortItem: (json['Short Item'] as num?)?.toInt(),
);

Map<String, dynamic> _$$ItemAvailabilityRowImplToJson(
  _$ItemAvailabilityRowImpl instance,
) => <String, dynamic>{
  '2nd Item Number': instance.secondItemNumber,
  '3rd Item Number': instance.thirdItemNumber,
  'Description': instance.description,
  'Lot Expiration Date': instance.lotExpirationDate,
  'Lot Manufacturing Date': instance.lotManufacturingDate,
  'Lot Status': instance.lotStatus,
  'Lot/Serial': instance.lotSerial,
  'Quantity Available': instance.quantityAvailable,
  'Quantity Inbound': instance.quantityInbound,
  'Quantity On Hand': instance.quantityOnHand,
  'Quantity Outbound': instance.quantityOutbound,
  'Sec UM': instance.secondaryUnitOfMeasure,
  'Short Item': instance.shortItem,
};
