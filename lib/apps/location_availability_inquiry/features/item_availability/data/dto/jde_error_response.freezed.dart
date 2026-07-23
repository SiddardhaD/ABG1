// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jde_error_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

JdeErrorResponse _$JdeErrorResponseFromJson(Map<String, dynamic> json) {
  return _JdeErrorResponse.fromJson(json);
}

/// @nodoc
mixin _$JdeErrorResponse {
  String? get message => throw _privateConstructorUsedError;
  String? get exception => throw _privateConstructorUsedError;
  String? get timeStamp => throw _privateConstructorUsedError;
  String? get userDefinedErrorText => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'jde__simpleMessage')
  String? get jdeSimpleMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 'jde__status')
  String? get jdeStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'jde__startTimestamp')
  String? get jdeStartTimestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'jde__endTimestamp')
  String? get jdeEndTimestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'jde__serverExecutionSeconds')
  double? get jdeServerExecutionSeconds => throw _privateConstructorUsedError;
  String? get exceptionId => throw _privateConstructorUsedError;

  /// Serializes this JdeErrorResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JdeErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JdeErrorResponseCopyWith<JdeErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JdeErrorResponseCopyWith<$Res> {
  factory $JdeErrorResponseCopyWith(
    JdeErrorResponse value,
    $Res Function(JdeErrorResponse) then,
  ) = _$JdeErrorResponseCopyWithImpl<$Res, JdeErrorResponse>;
  @useResult
  $Res call({
    String? message,
    String? exception,
    String? timeStamp,
    String? userDefinedErrorText,
    String? type,
    String? status,
    @JsonKey(name: 'jde__simpleMessage') String? jdeSimpleMessage,
    @JsonKey(name: 'jde__status') String? jdeStatus,
    @JsonKey(name: 'jde__startTimestamp') String? jdeStartTimestamp,
    @JsonKey(name: 'jde__endTimestamp') String? jdeEndTimestamp,
    @JsonKey(name: 'jde__serverExecutionSeconds')
    double? jdeServerExecutionSeconds,
    String? exceptionId,
  });
}

/// @nodoc
class _$JdeErrorResponseCopyWithImpl<$Res, $Val extends JdeErrorResponse>
    implements $JdeErrorResponseCopyWith<$Res> {
  _$JdeErrorResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JdeErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? exception = freezed,
    Object? timeStamp = freezed,
    Object? userDefinedErrorText = freezed,
    Object? type = freezed,
    Object? status = freezed,
    Object? jdeSimpleMessage = freezed,
    Object? jdeStatus = freezed,
    Object? jdeStartTimestamp = freezed,
    Object? jdeEndTimestamp = freezed,
    Object? jdeServerExecutionSeconds = freezed,
    Object? exceptionId = freezed,
  }) {
    return _then(
      _value.copyWith(
            message: freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String?,
            exception: freezed == exception
                ? _value.exception
                : exception // ignore: cast_nullable_to_non_nullable
                      as String?,
            timeStamp: freezed == timeStamp
                ? _value.timeStamp
                : timeStamp // ignore: cast_nullable_to_non_nullable
                      as String?,
            userDefinedErrorText: freezed == userDefinedErrorText
                ? _value.userDefinedErrorText
                : userDefinedErrorText // ignore: cast_nullable_to_non_nullable
                      as String?,
            type: freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            jdeSimpleMessage: freezed == jdeSimpleMessage
                ? _value.jdeSimpleMessage
                : jdeSimpleMessage // ignore: cast_nullable_to_non_nullable
                      as String?,
            jdeStatus: freezed == jdeStatus
                ? _value.jdeStatus
                : jdeStatus // ignore: cast_nullable_to_non_nullable
                      as String?,
            jdeStartTimestamp: freezed == jdeStartTimestamp
                ? _value.jdeStartTimestamp
                : jdeStartTimestamp // ignore: cast_nullable_to_non_nullable
                      as String?,
            jdeEndTimestamp: freezed == jdeEndTimestamp
                ? _value.jdeEndTimestamp
                : jdeEndTimestamp // ignore: cast_nullable_to_non_nullable
                      as String?,
            jdeServerExecutionSeconds: freezed == jdeServerExecutionSeconds
                ? _value.jdeServerExecutionSeconds
                : jdeServerExecutionSeconds // ignore: cast_nullable_to_non_nullable
                      as double?,
            exceptionId: freezed == exceptionId
                ? _value.exceptionId
                : exceptionId // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$JdeErrorResponseImplCopyWith<$Res>
    implements $JdeErrorResponseCopyWith<$Res> {
  factory _$$JdeErrorResponseImplCopyWith(
    _$JdeErrorResponseImpl value,
    $Res Function(_$JdeErrorResponseImpl) then,
  ) = __$$JdeErrorResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? message,
    String? exception,
    String? timeStamp,
    String? userDefinedErrorText,
    String? type,
    String? status,
    @JsonKey(name: 'jde__simpleMessage') String? jdeSimpleMessage,
    @JsonKey(name: 'jde__status') String? jdeStatus,
    @JsonKey(name: 'jde__startTimestamp') String? jdeStartTimestamp,
    @JsonKey(name: 'jde__endTimestamp') String? jdeEndTimestamp,
    @JsonKey(name: 'jde__serverExecutionSeconds')
    double? jdeServerExecutionSeconds,
    String? exceptionId,
  });
}

/// @nodoc
class __$$JdeErrorResponseImplCopyWithImpl<$Res>
    extends _$JdeErrorResponseCopyWithImpl<$Res, _$JdeErrorResponseImpl>
    implements _$$JdeErrorResponseImplCopyWith<$Res> {
  __$$JdeErrorResponseImplCopyWithImpl(
    _$JdeErrorResponseImpl _value,
    $Res Function(_$JdeErrorResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of JdeErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? exception = freezed,
    Object? timeStamp = freezed,
    Object? userDefinedErrorText = freezed,
    Object? type = freezed,
    Object? status = freezed,
    Object? jdeSimpleMessage = freezed,
    Object? jdeStatus = freezed,
    Object? jdeStartTimestamp = freezed,
    Object? jdeEndTimestamp = freezed,
    Object? jdeServerExecutionSeconds = freezed,
    Object? exceptionId = freezed,
  }) {
    return _then(
      _$JdeErrorResponseImpl(
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
        exception: freezed == exception
            ? _value.exception
            : exception // ignore: cast_nullable_to_non_nullable
                  as String?,
        timeStamp: freezed == timeStamp
            ? _value.timeStamp
            : timeStamp // ignore: cast_nullable_to_non_nullable
                  as String?,
        userDefinedErrorText: freezed == userDefinedErrorText
            ? _value.userDefinedErrorText
            : userDefinedErrorText // ignore: cast_nullable_to_non_nullable
                  as String?,
        type: freezed == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        jdeSimpleMessage: freezed == jdeSimpleMessage
            ? _value.jdeSimpleMessage
            : jdeSimpleMessage // ignore: cast_nullable_to_non_nullable
                  as String?,
        jdeStatus: freezed == jdeStatus
            ? _value.jdeStatus
            : jdeStatus // ignore: cast_nullable_to_non_nullable
                  as String?,
        jdeStartTimestamp: freezed == jdeStartTimestamp
            ? _value.jdeStartTimestamp
            : jdeStartTimestamp // ignore: cast_nullable_to_non_nullable
                  as String?,
        jdeEndTimestamp: freezed == jdeEndTimestamp
            ? _value.jdeEndTimestamp
            : jdeEndTimestamp // ignore: cast_nullable_to_non_nullable
                  as String?,
        jdeServerExecutionSeconds: freezed == jdeServerExecutionSeconds
            ? _value.jdeServerExecutionSeconds
            : jdeServerExecutionSeconds // ignore: cast_nullable_to_non_nullable
                  as double?,
        exceptionId: freezed == exceptionId
            ? _value.exceptionId
            : exceptionId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$JdeErrorResponseImpl implements _JdeErrorResponse {
  const _$JdeErrorResponseImpl({
    this.message,
    this.exception,
    this.timeStamp,
    this.userDefinedErrorText,
    this.type,
    this.status,
    @JsonKey(name: 'jde__simpleMessage') this.jdeSimpleMessage,
    @JsonKey(name: 'jde__status') this.jdeStatus,
    @JsonKey(name: 'jde__startTimestamp') this.jdeStartTimestamp,
    @JsonKey(name: 'jde__endTimestamp') this.jdeEndTimestamp,
    @JsonKey(name: 'jde__serverExecutionSeconds')
    this.jdeServerExecutionSeconds,
    this.exceptionId,
  });

  factory _$JdeErrorResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$JdeErrorResponseImplFromJson(json);

  @override
  final String? message;
  @override
  final String? exception;
  @override
  final String? timeStamp;
  @override
  final String? userDefinedErrorText;
  @override
  final String? type;
  @override
  final String? status;
  @override
  @JsonKey(name: 'jde__simpleMessage')
  final String? jdeSimpleMessage;
  @override
  @JsonKey(name: 'jde__status')
  final String? jdeStatus;
  @override
  @JsonKey(name: 'jde__startTimestamp')
  final String? jdeStartTimestamp;
  @override
  @JsonKey(name: 'jde__endTimestamp')
  final String? jdeEndTimestamp;
  @override
  @JsonKey(name: 'jde__serverExecutionSeconds')
  final double? jdeServerExecutionSeconds;
  @override
  final String? exceptionId;

  @override
  String toString() {
    return 'JdeErrorResponse(message: $message, exception: $exception, timeStamp: $timeStamp, userDefinedErrorText: $userDefinedErrorText, type: $type, status: $status, jdeSimpleMessage: $jdeSimpleMessage, jdeStatus: $jdeStatus, jdeStartTimestamp: $jdeStartTimestamp, jdeEndTimestamp: $jdeEndTimestamp, jdeServerExecutionSeconds: $jdeServerExecutionSeconds, exceptionId: $exceptionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JdeErrorResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.timeStamp, timeStamp) ||
                other.timeStamp == timeStamp) &&
            (identical(other.userDefinedErrorText, userDefinedErrorText) ||
                other.userDefinedErrorText == userDefinedErrorText) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.jdeSimpleMessage, jdeSimpleMessage) ||
                other.jdeSimpleMessage == jdeSimpleMessage) &&
            (identical(other.jdeStatus, jdeStatus) ||
                other.jdeStatus == jdeStatus) &&
            (identical(other.jdeStartTimestamp, jdeStartTimestamp) ||
                other.jdeStartTimestamp == jdeStartTimestamp) &&
            (identical(other.jdeEndTimestamp, jdeEndTimestamp) ||
                other.jdeEndTimestamp == jdeEndTimestamp) &&
            (identical(
                  other.jdeServerExecutionSeconds,
                  jdeServerExecutionSeconds,
                ) ||
                other.jdeServerExecutionSeconds == jdeServerExecutionSeconds) &&
            (identical(other.exceptionId, exceptionId) ||
                other.exceptionId == exceptionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    message,
    exception,
    timeStamp,
    userDefinedErrorText,
    type,
    status,
    jdeSimpleMessage,
    jdeStatus,
    jdeStartTimestamp,
    jdeEndTimestamp,
    jdeServerExecutionSeconds,
    exceptionId,
  );

  /// Create a copy of JdeErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JdeErrorResponseImplCopyWith<_$JdeErrorResponseImpl> get copyWith =>
      __$$JdeErrorResponseImplCopyWithImpl<_$JdeErrorResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$JdeErrorResponseImplToJson(this);
  }
}

abstract class _JdeErrorResponse implements JdeErrorResponse {
  const factory _JdeErrorResponse({
    final String? message,
    final String? exception,
    final String? timeStamp,
    final String? userDefinedErrorText,
    final String? type,
    final String? status,
    @JsonKey(name: 'jde__simpleMessage') final String? jdeSimpleMessage,
    @JsonKey(name: 'jde__status') final String? jdeStatus,
    @JsonKey(name: 'jde__startTimestamp') final String? jdeStartTimestamp,
    @JsonKey(name: 'jde__endTimestamp') final String? jdeEndTimestamp,
    @JsonKey(name: 'jde__serverExecutionSeconds')
    final double? jdeServerExecutionSeconds,
    final String? exceptionId,
  }) = _$JdeErrorResponseImpl;

  factory _JdeErrorResponse.fromJson(Map<String, dynamic> json) =
      _$JdeErrorResponseImpl.fromJson;

  @override
  String? get message;
  @override
  String? get exception;
  @override
  String? get timeStamp;
  @override
  String? get userDefinedErrorText;
  @override
  String? get type;
  @override
  String? get status;
  @override
  @JsonKey(name: 'jde__simpleMessage')
  String? get jdeSimpleMessage;
  @override
  @JsonKey(name: 'jde__status')
  String? get jdeStatus;
  @override
  @JsonKey(name: 'jde__startTimestamp')
  String? get jdeStartTimestamp;
  @override
  @JsonKey(name: 'jde__endTimestamp')
  String? get jdeEndTimestamp;
  @override
  @JsonKey(name: 'jde__serverExecutionSeconds')
  double? get jdeServerExecutionSeconds;
  @override
  String? get exceptionId;

  /// Create a copy of JdeErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JdeErrorResponseImplCopyWith<_$JdeErrorResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
