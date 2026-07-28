// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jde_login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JdeLoginResponseImpl _$$JdeLoginResponseImplFromJson(
  Map<String, dynamic> json,
) => _$JdeLoginResponseImpl(
  username: json['username'] as String,
  environment: json['environment'] as String,
  role: json['role'] as String?,
  jasserver: json['jasserver'] as String?,
  userInfo: JdeUserInfo.fromJson(json['userInfo'] as Map<String, dynamic>),
  userAuthorized: json['userAuthorized'] as bool?,
  adminAuthorized: json['adminAuthorized'] as bool?,
  passwordAboutToExpire: json['passwordAboutToExpire'] as bool?,
  machineName: json['machineName'] as String?,
  aisSessionCookie: json['aisSessionCookie'] as String?,
);

Map<String, dynamic> _$$JdeLoginResponseImplToJson(
  _$JdeLoginResponseImpl instance,
) => <String, dynamic>{
  'username': instance.username,
  'environment': instance.environment,
  'role': instance.role,
  'jasserver': instance.jasserver,
  'userInfo': instance.userInfo,
  'userAuthorized': instance.userAuthorized,
  'adminAuthorized': instance.adminAuthorized,
  'passwordAboutToExpire': instance.passwordAboutToExpire,
  'machineName': instance.machineName,
  'aisSessionCookie': instance.aisSessionCookie,
};
