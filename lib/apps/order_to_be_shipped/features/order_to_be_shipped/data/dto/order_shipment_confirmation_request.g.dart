// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_shipment_confirmation_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderShipmentConfirmationRequestImpl
_$$OrderShipmentConfirmationRequestImplFromJson(Map<String, dynamic> json) =>
    _$OrderShipmentConfirmationRequestImpl(
      deviceName: json['deviceName'] as String,
      pickSlipNumber: json['Pick_Slip_Number'] as String,
      orderCompany: json['Order_Company'] as String,
      orderType: json['Order_Type'] as String,
      token: json['token'] as String,
    );

Map<String, dynamic> _$$OrderShipmentConfirmationRequestImplToJson(
  _$OrderShipmentConfirmationRequestImpl instance,
) => <String, dynamic>{
  'deviceName': instance.deviceName,
  'Pick_Slip_Number': instance.pickSlipNumber,
  'Order_Company': instance.orderCompany,
  'Order_Type': instance.orderType,
  'token': instance.token,
};
