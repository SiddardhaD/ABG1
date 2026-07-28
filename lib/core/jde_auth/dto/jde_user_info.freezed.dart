// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jde_user_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

JdeUserInfo _$JdeUserInfoFromJson(Map<String, dynamic> json) {
  return _JdeUserInfo.fromJson(json);
}

/// @nodoc
mixin _$JdeUserInfo {
  String get token => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get alphaName => throw _privateConstructorUsedError;
  num? get addressNumber => throw _privateConstructorUsedError;
  String? get appsRelease => throw _privateConstructorUsedError;

  /// Serializes this JdeUserInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JdeUserInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JdeUserInfoCopyWith<JdeUserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JdeUserInfoCopyWith<$Res> {
  factory $JdeUserInfoCopyWith(
    JdeUserInfo value,
    $Res Function(JdeUserInfo) then,
  ) = _$JdeUserInfoCopyWithImpl<$Res, JdeUserInfo>;
  @useResult
  $Res call({
    String token,
    String? username,
    String? alphaName,
    num? addressNumber,
    String? appsRelease,
  });
}

/// @nodoc
class _$JdeUserInfoCopyWithImpl<$Res, $Val extends JdeUserInfo>
    implements $JdeUserInfoCopyWith<$Res> {
  _$JdeUserInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JdeUserInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? username = freezed,
    Object? alphaName = freezed,
    Object? addressNumber = freezed,
    Object? appsRelease = freezed,
  }) {
    return _then(
      _value.copyWith(
            token: null == token
                ? _value.token
                : token // ignore: cast_nullable_to_non_nullable
                      as String,
            username: freezed == username
                ? _value.username
                : username // ignore: cast_nullable_to_non_nullable
                      as String?,
            alphaName: freezed == alphaName
                ? _value.alphaName
                : alphaName // ignore: cast_nullable_to_non_nullable
                      as String?,
            addressNumber: freezed == addressNumber
                ? _value.addressNumber
                : addressNumber // ignore: cast_nullable_to_non_nullable
                      as num?,
            appsRelease: freezed == appsRelease
                ? _value.appsRelease
                : appsRelease // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$JdeUserInfoImplCopyWith<$Res>
    implements $JdeUserInfoCopyWith<$Res> {
  factory _$$JdeUserInfoImplCopyWith(
    _$JdeUserInfoImpl value,
    $Res Function(_$JdeUserInfoImpl) then,
  ) = __$$JdeUserInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String token,
    String? username,
    String? alphaName,
    num? addressNumber,
    String? appsRelease,
  });
}

/// @nodoc
class __$$JdeUserInfoImplCopyWithImpl<$Res>
    extends _$JdeUserInfoCopyWithImpl<$Res, _$JdeUserInfoImpl>
    implements _$$JdeUserInfoImplCopyWith<$Res> {
  __$$JdeUserInfoImplCopyWithImpl(
    _$JdeUserInfoImpl _value,
    $Res Function(_$JdeUserInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of JdeUserInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? username = freezed,
    Object? alphaName = freezed,
    Object? addressNumber = freezed,
    Object? appsRelease = freezed,
  }) {
    return _then(
      _$JdeUserInfoImpl(
        token: null == token
            ? _value.token
            : token // ignore: cast_nullable_to_non_nullable
                  as String,
        username: freezed == username
            ? _value.username
            : username // ignore: cast_nullable_to_non_nullable
                  as String?,
        alphaName: freezed == alphaName
            ? _value.alphaName
            : alphaName // ignore: cast_nullable_to_non_nullable
                  as String?,
        addressNumber: freezed == addressNumber
            ? _value.addressNumber
            : addressNumber // ignore: cast_nullable_to_non_nullable
                  as num?,
        appsRelease: freezed == appsRelease
            ? _value.appsRelease
            : appsRelease // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$JdeUserInfoImpl implements _JdeUserInfo {
  const _$JdeUserInfoImpl({
    required this.token,
    this.username,
    this.alphaName,
    this.addressNumber,
    this.appsRelease,
  });

  factory _$JdeUserInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$JdeUserInfoImplFromJson(json);

  @override
  final String token;
  @override
  final String? username;
  @override
  final String? alphaName;
  @override
  final num? addressNumber;
  @override
  final String? appsRelease;

  @override
  String toString() {
    return 'JdeUserInfo(token: $token, username: $username, alphaName: $alphaName, addressNumber: $addressNumber, appsRelease: $appsRelease)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JdeUserInfoImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.alphaName, alphaName) ||
                other.alphaName == alphaName) &&
            (identical(other.addressNumber, addressNumber) ||
                other.addressNumber == addressNumber) &&
            (identical(other.appsRelease, appsRelease) ||
                other.appsRelease == appsRelease));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    token,
    username,
    alphaName,
    addressNumber,
    appsRelease,
  );

  /// Create a copy of JdeUserInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JdeUserInfoImplCopyWith<_$JdeUserInfoImpl> get copyWith =>
      __$$JdeUserInfoImplCopyWithImpl<_$JdeUserInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JdeUserInfoImplToJson(this);
  }
}

abstract class _JdeUserInfo implements JdeUserInfo {
  const factory _JdeUserInfo({
    required final String token,
    final String? username,
    final String? alphaName,
    final num? addressNumber,
    final String? appsRelease,
  }) = _$JdeUserInfoImpl;

  factory _JdeUserInfo.fromJson(Map<String, dynamic> json) =
      _$JdeUserInfoImpl.fromJson;

  @override
  String get token;
  @override
  String? get username;
  @override
  String? get alphaName;
  @override
  num? get addressNumber;
  @override
  String? get appsRelease;

  /// Create a copy of JdeUserInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JdeUserInfoImplCopyWith<_$JdeUserInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
