// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jde_login_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

JdeLoginResponse _$JdeLoginResponseFromJson(Map<String, dynamic> json) {
  return _JdeLoginResponse.fromJson(json);
}

/// @nodoc
mixin _$JdeLoginResponse {
  String get username => throw _privateConstructorUsedError;
  String get environment => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  String? get jasserver => throw _privateConstructorUsedError;
  JdeUserInfo get userInfo => throw _privateConstructorUsedError;
  bool? get userAuthorized => throw _privateConstructorUsedError;
  bool? get adminAuthorized => throw _privateConstructorUsedError;
  bool? get passwordAboutToExpire => throw _privateConstructorUsedError;
  String? get machineName => throw _privateConstructorUsedError;
  String? get aisSessionCookie => throw _privateConstructorUsedError;

  /// Serializes this JdeLoginResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JdeLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JdeLoginResponseCopyWith<JdeLoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JdeLoginResponseCopyWith<$Res> {
  factory $JdeLoginResponseCopyWith(
    JdeLoginResponse value,
    $Res Function(JdeLoginResponse) then,
  ) = _$JdeLoginResponseCopyWithImpl<$Res, JdeLoginResponse>;
  @useResult
  $Res call({
    String username,
    String environment,
    String? role,
    String? jasserver,
    JdeUserInfo userInfo,
    bool? userAuthorized,
    bool? adminAuthorized,
    bool? passwordAboutToExpire,
    String? machineName,
    String? aisSessionCookie,
  });

  $JdeUserInfoCopyWith<$Res> get userInfo;
}

/// @nodoc
class _$JdeLoginResponseCopyWithImpl<$Res, $Val extends JdeLoginResponse>
    implements $JdeLoginResponseCopyWith<$Res> {
  _$JdeLoginResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JdeLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? environment = null,
    Object? role = freezed,
    Object? jasserver = freezed,
    Object? userInfo = null,
    Object? userAuthorized = freezed,
    Object? adminAuthorized = freezed,
    Object? passwordAboutToExpire = freezed,
    Object? machineName = freezed,
    Object? aisSessionCookie = freezed,
  }) {
    return _then(
      _value.copyWith(
            username: null == username
                ? _value.username
                : username // ignore: cast_nullable_to_non_nullable
                      as String,
            environment: null == environment
                ? _value.environment
                : environment // ignore: cast_nullable_to_non_nullable
                      as String,
            role: freezed == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as String?,
            jasserver: freezed == jasserver
                ? _value.jasserver
                : jasserver // ignore: cast_nullable_to_non_nullable
                      as String?,
            userInfo: null == userInfo
                ? _value.userInfo
                : userInfo // ignore: cast_nullable_to_non_nullable
                      as JdeUserInfo,
            userAuthorized: freezed == userAuthorized
                ? _value.userAuthorized
                : userAuthorized // ignore: cast_nullable_to_non_nullable
                      as bool?,
            adminAuthorized: freezed == adminAuthorized
                ? _value.adminAuthorized
                : adminAuthorized // ignore: cast_nullable_to_non_nullable
                      as bool?,
            passwordAboutToExpire: freezed == passwordAboutToExpire
                ? _value.passwordAboutToExpire
                : passwordAboutToExpire // ignore: cast_nullable_to_non_nullable
                      as bool?,
            machineName: freezed == machineName
                ? _value.machineName
                : machineName // ignore: cast_nullable_to_non_nullable
                      as String?,
            aisSessionCookie: freezed == aisSessionCookie
                ? _value.aisSessionCookie
                : aisSessionCookie // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of JdeLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JdeUserInfoCopyWith<$Res> get userInfo {
    return $JdeUserInfoCopyWith<$Res>(_value.userInfo, (value) {
      return _then(_value.copyWith(userInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JdeLoginResponseImplCopyWith<$Res>
    implements $JdeLoginResponseCopyWith<$Res> {
  factory _$$JdeLoginResponseImplCopyWith(
    _$JdeLoginResponseImpl value,
    $Res Function(_$JdeLoginResponseImpl) then,
  ) = __$$JdeLoginResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String username,
    String environment,
    String? role,
    String? jasserver,
    JdeUserInfo userInfo,
    bool? userAuthorized,
    bool? adminAuthorized,
    bool? passwordAboutToExpire,
    String? machineName,
    String? aisSessionCookie,
  });

  @override
  $JdeUserInfoCopyWith<$Res> get userInfo;
}

/// @nodoc
class __$$JdeLoginResponseImplCopyWithImpl<$Res>
    extends _$JdeLoginResponseCopyWithImpl<$Res, _$JdeLoginResponseImpl>
    implements _$$JdeLoginResponseImplCopyWith<$Res> {
  __$$JdeLoginResponseImplCopyWithImpl(
    _$JdeLoginResponseImpl _value,
    $Res Function(_$JdeLoginResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of JdeLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? environment = null,
    Object? role = freezed,
    Object? jasserver = freezed,
    Object? userInfo = null,
    Object? userAuthorized = freezed,
    Object? adminAuthorized = freezed,
    Object? passwordAboutToExpire = freezed,
    Object? machineName = freezed,
    Object? aisSessionCookie = freezed,
  }) {
    return _then(
      _$JdeLoginResponseImpl(
        username: null == username
            ? _value.username
            : username // ignore: cast_nullable_to_non_nullable
                  as String,
        environment: null == environment
            ? _value.environment
            : environment // ignore: cast_nullable_to_non_nullable
                  as String,
        role: freezed == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as String?,
        jasserver: freezed == jasserver
            ? _value.jasserver
            : jasserver // ignore: cast_nullable_to_non_nullable
                  as String?,
        userInfo: null == userInfo
            ? _value.userInfo
            : userInfo // ignore: cast_nullable_to_non_nullable
                  as JdeUserInfo,
        userAuthorized: freezed == userAuthorized
            ? _value.userAuthorized
            : userAuthorized // ignore: cast_nullable_to_non_nullable
                  as bool?,
        adminAuthorized: freezed == adminAuthorized
            ? _value.adminAuthorized
            : adminAuthorized // ignore: cast_nullable_to_non_nullable
                  as bool?,
        passwordAboutToExpire: freezed == passwordAboutToExpire
            ? _value.passwordAboutToExpire
            : passwordAboutToExpire // ignore: cast_nullable_to_non_nullable
                  as bool?,
        machineName: freezed == machineName
            ? _value.machineName
            : machineName // ignore: cast_nullable_to_non_nullable
                  as String?,
        aisSessionCookie: freezed == aisSessionCookie
            ? _value.aisSessionCookie
            : aisSessionCookie // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$JdeLoginResponseImpl implements _JdeLoginResponse {
  const _$JdeLoginResponseImpl({
    required this.username,
    required this.environment,
    this.role,
    this.jasserver,
    required this.userInfo,
    this.userAuthorized,
    this.adminAuthorized,
    this.passwordAboutToExpire,
    this.machineName,
    this.aisSessionCookie,
  });

  factory _$JdeLoginResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$JdeLoginResponseImplFromJson(json);

  @override
  final String username;
  @override
  final String environment;
  @override
  final String? role;
  @override
  final String? jasserver;
  @override
  final JdeUserInfo userInfo;
  @override
  final bool? userAuthorized;
  @override
  final bool? adminAuthorized;
  @override
  final bool? passwordAboutToExpire;
  @override
  final String? machineName;
  @override
  final String? aisSessionCookie;

  @override
  String toString() {
    return 'JdeLoginResponse(username: $username, environment: $environment, role: $role, jasserver: $jasserver, userInfo: $userInfo, userAuthorized: $userAuthorized, adminAuthorized: $adminAuthorized, passwordAboutToExpire: $passwordAboutToExpire, machineName: $machineName, aisSessionCookie: $aisSessionCookie)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JdeLoginResponseImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.environment, environment) ||
                other.environment == environment) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.jasserver, jasserver) ||
                other.jasserver == jasserver) &&
            (identical(other.userInfo, userInfo) ||
                other.userInfo == userInfo) &&
            (identical(other.userAuthorized, userAuthorized) ||
                other.userAuthorized == userAuthorized) &&
            (identical(other.adminAuthorized, adminAuthorized) ||
                other.adminAuthorized == adminAuthorized) &&
            (identical(other.passwordAboutToExpire, passwordAboutToExpire) ||
                other.passwordAboutToExpire == passwordAboutToExpire) &&
            (identical(other.machineName, machineName) ||
                other.machineName == machineName) &&
            (identical(other.aisSessionCookie, aisSessionCookie) ||
                other.aisSessionCookie == aisSessionCookie));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    username,
    environment,
    role,
    jasserver,
    userInfo,
    userAuthorized,
    adminAuthorized,
    passwordAboutToExpire,
    machineName,
    aisSessionCookie,
  );

  /// Create a copy of JdeLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JdeLoginResponseImplCopyWith<_$JdeLoginResponseImpl> get copyWith =>
      __$$JdeLoginResponseImplCopyWithImpl<_$JdeLoginResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$JdeLoginResponseImplToJson(this);
  }
}

abstract class _JdeLoginResponse implements JdeLoginResponse {
  const factory _JdeLoginResponse({
    required final String username,
    required final String environment,
    final String? role,
    final String? jasserver,
    required final JdeUserInfo userInfo,
    final bool? userAuthorized,
    final bool? adminAuthorized,
    final bool? passwordAboutToExpire,
    final String? machineName,
    final String? aisSessionCookie,
  }) = _$JdeLoginResponseImpl;

  factory _JdeLoginResponse.fromJson(Map<String, dynamic> json) =
      _$JdeLoginResponseImpl.fromJson;

  @override
  String get username;
  @override
  String get environment;
  @override
  String? get role;
  @override
  String? get jasserver;
  @override
  JdeUserInfo get userInfo;
  @override
  bool? get userAuthorized;
  @override
  bool? get adminAuthorized;
  @override
  bool? get passwordAboutToExpire;
  @override
  String? get machineName;
  @override
  String? get aisSessionCookie;

  /// Create a copy of JdeLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JdeLoginResponseImplCopyWith<_$JdeLoginResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
