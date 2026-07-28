// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jde_user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JdeUserInfoImpl _$$JdeUserInfoImplFromJson(Map<String, dynamic> json) =>
    _$JdeUserInfoImpl(
      token: json['token'] as String,
      username: json['username'] as String?,
      alphaName: json['alphaName'] as String?,
      addressNumber: json['addressNumber'] as num?,
      appsRelease: json['appsRelease'] as String?,
    );

Map<String, dynamic> _$$JdeUserInfoImplToJson(_$JdeUserInfoImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'username': instance.username,
      'alphaName': instance.alphaName,
      'addressNumber': instance.addressNumber,
      'appsRelease': instance.appsRelease,
    };
