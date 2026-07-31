// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_to_be_shipped_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderToBeShippedRequestImpl _$$OrderToBeShippedRequestImplFromJson(
  Map<String, dynamic> json,
) => _$OrderToBeShippedRequestImpl(
  deviceName: json['deviceName'] as String,
  pickNumber: json['PickNumber'] as String,
  orderType: json['Order_Type'] as String,
  orderCompany: json['Order_Company'] as String,
  token: json['token'] as String,
);

Map<String, dynamic> _$$OrderToBeShippedRequestImplToJson(
  _$OrderToBeShippedRequestImpl instance,
) => <String, dynamic>{
  'deviceName': instance.deviceName,
  'PickNumber': instance.pickNumber,
  'Order_Type': instance.orderType,
  'Order_Company': instance.orderCompany,
  'token': instance.token,
};
