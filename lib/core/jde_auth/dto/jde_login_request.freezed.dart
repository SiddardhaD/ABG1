// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jde_login_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

JdeLoginRequest _$JdeLoginRequestFromJson(Map<String, dynamic> json) {
  return _JdeLoginRequest.fromJson(json);
}

/// @nodoc
mixin _$JdeLoginRequest {
  String get deviceName => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get environment => throw _privateConstructorUsedError;

  /// Serializes this JdeLoginRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JdeLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JdeLoginRequestCopyWith<JdeLoginRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JdeLoginRequestCopyWith<$Res> {
  factory $JdeLoginRequestCopyWith(
    JdeLoginRequest value,
    $Res Function(JdeLoginRequest) then,
  ) = _$JdeLoginRequestCopyWithImpl<$Res, JdeLoginRequest>;
  @useResult
  $Res call({
    String deviceName,
    String username,
    String password,
    String environment,
  });
}

/// @nodoc
class _$JdeLoginRequestCopyWithImpl<$Res, $Val extends JdeLoginRequest>
    implements $JdeLoginRequestCopyWith<$Res> {
  _$JdeLoginRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JdeLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceName = null,
    Object? username = null,
    Object? password = null,
    Object? environment = null,
  }) {
    return _then(
      _value.copyWith(
            deviceName: null == deviceName
                ? _value.deviceName
                : deviceName // ignore: cast_nullable_to_non_nullable
                      as String,
            username: null == username
                ? _value.username
                : username // ignore: cast_nullable_to_non_nullable
                      as String,
            password: null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                      as String,
            environment: null == environment
                ? _value.environment
                : environment // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$JdeLoginRequestImplCopyWith<$Res>
    implements $JdeLoginRequestCopyWith<$Res> {
  factory _$$JdeLoginRequestImplCopyWith(
    _$JdeLoginRequestImpl value,
    $Res Function(_$JdeLoginRequestImpl) then,
  ) = __$$JdeLoginRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String deviceName,
    String username,
    String password,
    String environment,
  });
}

/// @nodoc
class __$$JdeLoginRequestImplCopyWithImpl<$Res>
    extends _$JdeLoginRequestCopyWithImpl<$Res, _$JdeLoginRequestImpl>
    implements _$$JdeLoginRequestImplCopyWith<$Res> {
  __$$JdeLoginRequestImplCopyWithImpl(
    _$JdeLoginRequestImpl _value,
    $Res Function(_$JdeLoginRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of JdeLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceName = null,
    Object? username = null,
    Object? password = null,
    Object? environment = null,
  }) {
    return _then(
      _$JdeLoginRequestImpl(
        deviceName: null == deviceName
            ? _value.deviceName
            : deviceName // ignore: cast_nullable_to_non_nullable
                  as String,
        username: null == username
            ? _value.username
            : username // ignore: cast_nullable_to_non_nullable
                  as String,
        password: null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String,
        environment: null == environment
            ? _value.environment
            : environment // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$JdeLoginRequestImpl implements _JdeLoginRequest {
  const _$JdeLoginRequestImpl({
    required this.deviceName,
    required this.username,
    required this.password,
    required this.environment,
  });

  factory _$JdeLoginRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$JdeLoginRequestImplFromJson(json);

  @override
  final String deviceName;
  @override
  final String username;
  @override
  final String password;
  @override
  final String environment;

  @override
  String toString() {
    return 'JdeLoginRequest(deviceName: $deviceName, username: $username, password: $password, environment: $environment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JdeLoginRequestImpl &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.environment, environment) ||
                other.environment == environment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, deviceName, username, password, environment);

  /// Create a copy of JdeLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JdeLoginRequestImplCopyWith<_$JdeLoginRequestImpl> get copyWith =>
      __$$JdeLoginRequestImplCopyWithImpl<_$JdeLoginRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$JdeLoginRequestImplToJson(this);
  }
}

abstract class _JdeLoginRequest implements JdeLoginRequest {
  const factory _JdeLoginRequest({
    required final String deviceName,
    required final String username,
    required final String password,
    required final String environment,
  }) = _$JdeLoginRequestImpl;

  factory _JdeLoginRequest.fromJson(Map<String, dynamic> json) =
      _$JdeLoginRequestImpl.fromJson;

  @override
  String get deviceName;
  @override
  String get username;
  @override
  String get password;
  @override
  String get environment;

  /// Create a copy of JdeLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JdeLoginRequestImplCopyWith<_$JdeLoginRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
