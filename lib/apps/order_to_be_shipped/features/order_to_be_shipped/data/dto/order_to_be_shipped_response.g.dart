// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_to_be_shipped_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderToBeShippedResponseImpl _$$OrderToBeShippedResponseImplFromJson(
  Map<String, dynamic> json,
) => _$OrderToBeShippedResponseImpl(
  lines:
      (json['OrderTobeShippedDetails'] as List<dynamic>?)
          ?.map((e) => OrderToBeShippedLine.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <OrderToBeShippedLine>[],
  jdeStatus: json['jde__status'] as String,
  jdeStartTimestamp: json['jde__startTimestamp'] as String?,
  jdeEndTimestamp: json['jde__endTimestamp'] as String?,
  jdeServerExecutionSeconds: (json['jde__serverExecutionSeconds'] as num?)
      ?.toDouble(),
);

Map<String, dynamic> _$$OrderToBeShippedResponseImplToJson(
  _$OrderToBeShippedResponseImpl instance,
) => <String, dynamic>{
  'OrderTobeShippedDetails': instance.lines,
  'jde__status': instance.jdeStatus,
  'jde__startTimestamp': instance.jdeStartTimestamp,
  'jde__endTimestamp': instance.jdeEndTimestamp,
  'jde__serverExecutionSeconds': instance.jdeServerExecutionSeconds,
};
