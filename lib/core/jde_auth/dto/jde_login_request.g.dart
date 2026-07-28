// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jde_login_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JdeLoginRequestImpl _$$JdeLoginRequestImplFromJson(
  Map<String, dynamic> json,
) => _$JdeLoginRequestImpl(
  deviceName: json['deviceName'] as String,
  username: json['username'] as String,
  password: json['password'] as String,
  environment: json['environment'] as String,
);

Map<String, dynamic> _$$JdeLoginRequestImplToJson(
  _$JdeLoginRequestImpl instance,
) => <String, dynamic>{
  'deviceName': instance.deviceName,
  'username': instance.username,
  'password': instance.password,
  'environment': instance.environment,
};
