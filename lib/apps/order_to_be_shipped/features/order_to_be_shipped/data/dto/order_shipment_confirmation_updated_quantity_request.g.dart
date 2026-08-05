// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_shipment_confirmation_updated_quantity_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderShipmentConfirmationUpdatedQuantityRequestImpl
_$$OrderShipmentConfirmationUpdatedQuantityRequestImplFromJson(
  Map<String, dynamic> json,
) => _$OrderShipmentConfirmationUpdatedQuantityRequestImpl(
  deviceName: json['deviceName'] as String,
  companyKeyOrderNo: json['CompanyKeyOrderNo'] as String,
  pickSlipNumber: json['Pick_Slip_Number'] as String,
  orderType: json['OrderType'] as String,
  shipmentDetails: (json['ShipmentDetails'] as List<dynamic>)
      .map((e) => ShipmentDetailLine.fromJson(e as Map<String, dynamic>))
      .toList(),
  token: json['token'] as String,
);

Map<String, dynamic>
_$$OrderShipmentConfirmationUpdatedQuantityRequestImplToJson(
  _$OrderShipmentConfirmationUpdatedQuantityRequestImpl instance,
) => <String, dynamic>{
  'deviceName': instance.deviceName,
  'CompanyKeyOrderNo': instance.companyKeyOrderNo,
  'Pick_Slip_Number': instance.pickSlipNumber,
  'OrderType': instance.orderType,
  'ShipmentDetails': instance.shipmentDetails.map((e) => e.toJson()).toList(),
  'token': instance.token,
};
