// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_availability_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemAvailabilityResponseImpl _$$ItemAvailabilityResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ItemAvailabilityResponseImpl(
  result: ItemAvailabilityResult.fromJson(
    json['FR_ItemAvailability_1'] as Map<String, dynamic>,
  ),
  jdeStatus: json['jde__status'] as String,
  jdeStartTimestamp: json['jde__startTimestamp'] as String?,
  jdeEndTimestamp: json['jde__endTimestamp'] as String?,
  jdeServerExecutionSeconds: (json['jde__serverExecutionSeconds'] as num?)
      ?.toDouble(),
);

Map<String, dynamic> _$$ItemAvailabilityResponseImplToJson(
  _$ItemAvailabilityResponseImpl instance,
) => <String, dynamic>{
  'FR_ItemAvailability_1': instance.result.toJson(),
  'jde__status': instance.jdeStatus,
  'jde__startTimestamp': instance.jdeStartTimestamp,
  'jde__endTimestamp': instance.jdeEndTimestamp,
  'jde__serverExecutionSeconds': instance.jdeServerExecutionSeconds,
};
