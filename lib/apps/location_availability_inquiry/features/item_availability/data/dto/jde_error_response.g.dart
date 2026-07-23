// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jde_error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JdeErrorResponseImpl _$$JdeErrorResponseImplFromJson(
  Map<String, dynamic> json,
) => _$JdeErrorResponseImpl(
  message: json['message'] as String?,
  exception: json['exception'] as String?,
  timeStamp: json['timeStamp'] as String?,
  userDefinedErrorText: json['userDefinedErrorText'] as String?,
  type: json['type'] as String?,
  status: json['status'] as String?,
  jdeSimpleMessage: json['jde__simpleMessage'] as String?,
  jdeStatus: json['jde__status'] as String?,
  jdeStartTimestamp: json['jde__startTimestamp'] as String?,
  jdeEndTimestamp: json['jde__endTimestamp'] as String?,
  jdeServerExecutionSeconds: (json['jde__serverExecutionSeconds'] as num?)
      ?.toDouble(),
  exceptionId: json['exceptionId'] as String?,
);

Map<String, dynamic> _$$JdeErrorResponseImplToJson(
  _$JdeErrorResponseImpl instance,
) => <String, dynamic>{
  'message': instance.message,
  'exception': instance.exception,
  'timeStamp': instance.timeStamp,
  'userDefinedErrorText': instance.userDefinedErrorText,
  'type': instance.type,
  'status': instance.status,
  'jde__simpleMessage': instance.jdeSimpleMessage,
  'jde__status': instance.jdeStatus,
  'jde__startTimestamp': instance.jdeStartTimestamp,
  'jde__endTimestamp': instance.jdeEndTimestamp,
  'jde__serverExecutionSeconds': instance.jdeServerExecutionSeconds,
  'exceptionId': instance.exceptionId,
};
