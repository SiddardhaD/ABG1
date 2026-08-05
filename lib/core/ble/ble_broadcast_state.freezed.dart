// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ble_broadcast_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$BleBroadcastState {
  BleBroadcastStatus get status => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get isSending => throw _privateConstructorUsedError;
  String? get lastSentPayload => throw _privateConstructorUsedError;

  /// Create a copy of BleBroadcastState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BleBroadcastStateCopyWith<BleBroadcastState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BleBroadcastStateCopyWith<$Res> {
  factory $BleBroadcastStateCopyWith(
    BleBroadcastState value,
    $Res Function(BleBroadcastState) then,
  ) = _$BleBroadcastStateCopyWithImpl<$Res, BleBroadcastState>;
  @useResult
  $Res call({
    BleBroadcastStatus status,
    String errorMessage,
    bool isSending,
    String? lastSentPayload,
  });
}

/// @nodoc
class _$BleBroadcastStateCopyWithImpl<$Res, $Val extends BleBroadcastState>
    implements $BleBroadcastStateCopyWith<$Res> {
  _$BleBroadcastStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BleBroadcastState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = null,
    Object? isSending = null,
    Object? lastSentPayload = freezed,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as BleBroadcastStatus,
            errorMessage: null == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                      as String,
            isSending: null == isSending
                ? _value.isSending
                : isSending // ignore: cast_nullable_to_non_nullable
                      as bool,
            lastSentPayload: freezed == lastSentPayload
                ? _value.lastSentPayload
                : lastSentPayload // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BleBroadcastStateImplCopyWith<$Res>
    implements $BleBroadcastStateCopyWith<$Res> {
  factory _$$BleBroadcastStateImplCopyWith(
    _$BleBroadcastStateImpl value,
    $Res Function(_$BleBroadcastStateImpl) then,
  ) = __$$BleBroadcastStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    BleBroadcastStatus status,
    String errorMessage,
    bool isSending,
    String? lastSentPayload,
  });
}

/// @nodoc
class __$$BleBroadcastStateImplCopyWithImpl<$Res>
    extends _$BleBroadcastStateCopyWithImpl<$Res, _$BleBroadcastStateImpl>
    implements _$$BleBroadcastStateImplCopyWith<$Res> {
  __$$BleBroadcastStateImplCopyWithImpl(
    _$BleBroadcastStateImpl _value,
    $Res Function(_$BleBroadcastStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BleBroadcastState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = null,
    Object? isSending = null,
    Object? lastSentPayload = freezed,
  }) {
    return _then(
      _$BleBroadcastStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as BleBroadcastStatus,
        errorMessage: null == errorMessage
            ? _value.errorMessage
            : errorMessage // ignore: cast_nullable_to_non_nullable
                  as String,
        isSending: null == isSending
            ? _value.isSending
            : isSending // ignore: cast_nullable_to_non_nullable
                  as bool,
        lastSentPayload: freezed == lastSentPayload
            ? _value.lastSentPayload
            : lastSentPayload // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$BleBroadcastStateImpl extends _BleBroadcastState {
  const _$BleBroadcastStateImpl({
    this.status = BleBroadcastStatus.unknown,
    this.errorMessage = '',
    this.isSending = false,
    this.lastSentPayload,
  }) : super._();

  @override
  @JsonKey()
  final BleBroadcastStatus status;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final bool isSending;
  @override
  final String? lastSentPayload;

  @override
  String toString() {
    return 'BleBroadcastState(status: $status, errorMessage: $errorMessage, isSending: $isSending, lastSentPayload: $lastSentPayload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BleBroadcastStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isSending, isSending) ||
                other.isSending == isSending) &&
            (identical(other.lastSentPayload, lastSentPayload) ||
                other.lastSentPayload == lastSentPayload));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    errorMessage,
    isSending,
    lastSentPayload,
  );

  /// Create a copy of BleBroadcastState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BleBroadcastStateImplCopyWith<_$BleBroadcastStateImpl> get copyWith =>
      __$$BleBroadcastStateImplCopyWithImpl<_$BleBroadcastStateImpl>(
        this,
        _$identity,
      );
}

abstract class _BleBroadcastState extends BleBroadcastState {
  const factory _BleBroadcastState({
    final BleBroadcastStatus status,
    final String errorMessage,
    final bool isSending,
    final String? lastSentPayload,
  }) = _$BleBroadcastStateImpl;
  const _BleBroadcastState._() : super._();

  @override
  BleBroadcastStatus get status;
  @override
  String get errorMessage;
  @override
  bool get isSending;
  @override
  String? get lastSentPayload;

  /// Create a copy of BleBroadcastState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BleBroadcastStateImplCopyWith<_$BleBroadcastStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
