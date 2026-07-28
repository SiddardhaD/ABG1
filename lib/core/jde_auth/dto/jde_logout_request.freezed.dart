// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jde_logout_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

JdeLogoutRequest _$JdeLogoutRequestFromJson(Map<String, dynamic> json) {
  return _JdeLogoutRequest.fromJson(json);
}

/// @nodoc
mixin _$JdeLogoutRequest {
  String get deviceName => throw _privateConstructorUsedError;
  String get environment => throw _privateConstructorUsedError;

  /// Serializes this JdeLogoutRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JdeLogoutRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JdeLogoutRequestCopyWith<JdeLogoutRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JdeLogoutRequestCopyWith<$Res> {
  factory $JdeLogoutRequestCopyWith(
    JdeLogoutRequest value,
    $Res Function(JdeLogoutRequest) then,
  ) = _$JdeLogoutRequestCopyWithImpl<$Res, JdeLogoutRequest>;
  @useResult
  $Res call({String deviceName, String environment});
}

/// @nodoc
class _$JdeLogoutRequestCopyWithImpl<$Res, $Val extends JdeLogoutRequest>
    implements $JdeLogoutRequestCopyWith<$Res> {
  _$JdeLogoutRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JdeLogoutRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? deviceName = null, Object? environment = null}) {
    return _then(
      _value.copyWith(
            deviceName: null == deviceName
                ? _value.deviceName
                : deviceName // ignore: cast_nullable_to_non_nullable
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
abstract class _$$JdeLogoutRequestImplCopyWith<$Res>
    implements $JdeLogoutRequestCopyWith<$Res> {
  factory _$$JdeLogoutRequestImplCopyWith(
    _$JdeLogoutRequestImpl value,
    $Res Function(_$JdeLogoutRequestImpl) then,
  ) = __$$JdeLogoutRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String deviceName, String environment});
}

/// @nodoc
class __$$JdeLogoutRequestImplCopyWithImpl<$Res>
    extends _$JdeLogoutRequestCopyWithImpl<$Res, _$JdeLogoutRequestImpl>
    implements _$$JdeLogoutRequestImplCopyWith<$Res> {
  __$$JdeLogoutRequestImplCopyWithImpl(
    _$JdeLogoutRequestImpl _value,
    $Res Function(_$JdeLogoutRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of JdeLogoutRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? deviceName = null, Object? environment = null}) {
    return _then(
      _$JdeLogoutRequestImpl(
        deviceName: null == deviceName
            ? _value.deviceName
            : deviceName // ignore: cast_nullable_to_non_nullable
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
class _$JdeLogoutRequestImpl implements _JdeLogoutRequest {
  const _$JdeLogoutRequestImpl({
    required this.deviceName,
    required this.environment,
  });

  factory _$JdeLogoutRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$JdeLogoutRequestImplFromJson(json);

  @override
  final String deviceName;
  @override
  final String environment;

  @override
  String toString() {
    return 'JdeLogoutRequest(deviceName: $deviceName, environment: $environment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JdeLogoutRequestImpl &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName) &&
            (identical(other.environment, environment) ||
                other.environment == environment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, deviceName, environment);

  /// Create a copy of JdeLogoutRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JdeLogoutRequestImplCopyWith<_$JdeLogoutRequestImpl> get copyWith =>
      __$$JdeLogoutRequestImplCopyWithImpl<_$JdeLogoutRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$JdeLogoutRequestImplToJson(this);
  }
}

abstract class _JdeLogoutRequest implements JdeLogoutRequest {
  const factory _JdeLogoutRequest({
    required final String deviceName,
    required final String environment,
  }) = _$JdeLogoutRequestImpl;

  factory _JdeLogoutRequest.fromJson(Map<String, dynamic> json) =
      _$JdeLogoutRequestImpl.fromJson;

  @override
  String get deviceName;
  @override
  String get environment;

  /// Create a copy of JdeLogoutRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JdeLogoutRequestImplCopyWith<_$JdeLogoutRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
