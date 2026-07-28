// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_to_be_shipped_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OrderToBeShippedResponse _$OrderToBeShippedResponseFromJson(
  Map<String, dynamic> json,
) {
  return _OrderToBeShippedResponse.fromJson(json);
}

/// @nodoc
mixin _$OrderToBeShippedResponse {
  @JsonKey(name: 'OrderTobeShippedDetails')
  List<OrderToBeShippedLine> get lines => throw _privateConstructorUsedError;
  @JsonKey(name: 'jde__status')
  String get jdeStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'jde__startTimestamp')
  String? get jdeStartTimestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'jde__endTimestamp')
  String? get jdeEndTimestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'jde__serverExecutionSeconds')
  double? get jdeServerExecutionSeconds => throw _privateConstructorUsedError;

  /// Serializes this OrderToBeShippedResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderToBeShippedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderToBeShippedResponseCopyWith<OrderToBeShippedResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderToBeShippedResponseCopyWith<$Res> {
  factory $OrderToBeShippedResponseCopyWith(
    OrderToBeShippedResponse value,
    $Res Function(OrderToBeShippedResponse) then,
  ) = _$OrderToBeShippedResponseCopyWithImpl<$Res, OrderToBeShippedResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'OrderTobeShippedDetails') List<OrderToBeShippedLine> lines,
    @JsonKey(name: 'jde__status') String jdeStatus,
    @JsonKey(name: 'jde__startTimestamp') String? jdeStartTimestamp,
    @JsonKey(name: 'jde__endTimestamp') String? jdeEndTimestamp,
    @JsonKey(name: 'jde__serverExecutionSeconds')
    double? jdeServerExecutionSeconds,
  });
}

/// @nodoc
class _$OrderToBeShippedResponseCopyWithImpl<
  $Res,
  $Val extends OrderToBeShippedResponse
>
    implements $OrderToBeShippedResponseCopyWith<$Res> {
  _$OrderToBeShippedResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderToBeShippedResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lines = null,
    Object? jdeStatus = null,
    Object? jdeStartTimestamp = freezed,
    Object? jdeEndTimestamp = freezed,
    Object? jdeServerExecutionSeconds = freezed,
  }) {
    return _then(
      _value.copyWith(
            lines: null == lines
                ? _value.lines
                : lines // ignore: cast_nullable_to_non_nullable
                      as List<OrderToBeShippedLine>,
            jdeStatus: null == jdeStatus
                ? _value.jdeStatus
                : jdeStatus // ignore: cast_nullable_to_non_nullable
                      as String,
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderToBeShippedResponseImplCopyWith<$Res>
    implements $OrderToBeShippedResponseCopyWith<$Res> {
  factory _$$OrderToBeShippedResponseImplCopyWith(
    _$OrderToBeShippedResponseImpl value,
    $Res Function(_$OrderToBeShippedResponseImpl) then,
  ) = __$$OrderToBeShippedResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'OrderTobeShippedDetails') List<OrderToBeShippedLine> lines,
    @JsonKey(name: 'jde__status') String jdeStatus,
    @JsonKey(name: 'jde__startTimestamp') String? jdeStartTimestamp,
    @JsonKey(name: 'jde__endTimestamp') String? jdeEndTimestamp,
    @JsonKey(name: 'jde__serverExecutionSeconds')
    double? jdeServerExecutionSeconds,
  });
}

/// @nodoc
class __$$OrderToBeShippedResponseImplCopyWithImpl<$Res>
    extends
        _$OrderToBeShippedResponseCopyWithImpl<
          $Res,
          _$OrderToBeShippedResponseImpl
        >
    implements _$$OrderToBeShippedResponseImplCopyWith<$Res> {
  __$$OrderToBeShippedResponseImplCopyWithImpl(
    _$OrderToBeShippedResponseImpl _value,
    $Res Function(_$OrderToBeShippedResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderToBeShippedResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lines = null,
    Object? jdeStatus = null,
    Object? jdeStartTimestamp = freezed,
    Object? jdeEndTimestamp = freezed,
    Object? jdeServerExecutionSeconds = freezed,
  }) {
    return _then(
      _$OrderToBeShippedResponseImpl(
        lines: null == lines
            ? _value._lines
            : lines // ignore: cast_nullable_to_non_nullable
                  as List<OrderToBeShippedLine>,
        jdeStatus: null == jdeStatus
            ? _value.jdeStatus
            : jdeStatus // ignore: cast_nullable_to_non_nullable
                  as String,
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderToBeShippedResponseImpl implements _OrderToBeShippedResponse {
  const _$OrderToBeShippedResponseImpl({
    @JsonKey(name: 'OrderTobeShippedDetails')
    final List<OrderToBeShippedLine> lines = const <OrderToBeShippedLine>[],
    @JsonKey(name: 'jde__status') required this.jdeStatus,
    @JsonKey(name: 'jde__startTimestamp') this.jdeStartTimestamp,
    @JsonKey(name: 'jde__endTimestamp') this.jdeEndTimestamp,
    @JsonKey(name: 'jde__serverExecutionSeconds')
    this.jdeServerExecutionSeconds,
  }) : _lines = lines;

  factory _$OrderToBeShippedResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderToBeShippedResponseImplFromJson(json);

  final List<OrderToBeShippedLine> _lines;
  @override
  @JsonKey(name: 'OrderTobeShippedDetails')
  List<OrderToBeShippedLine> get lines {
    if (_lines is EqualUnmodifiableListView) return _lines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lines);
  }

  @override
  @JsonKey(name: 'jde__status')
  final String jdeStatus;
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
  String toString() {
    return 'OrderToBeShippedResponse(lines: $lines, jdeStatus: $jdeStatus, jdeStartTimestamp: $jdeStartTimestamp, jdeEndTimestamp: $jdeEndTimestamp, jdeServerExecutionSeconds: $jdeServerExecutionSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderToBeShippedResponseImpl &&
            const DeepCollectionEquality().equals(other._lines, _lines) &&
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
                other.jdeServerExecutionSeconds == jdeServerExecutionSeconds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_lines),
    jdeStatus,
    jdeStartTimestamp,
    jdeEndTimestamp,
    jdeServerExecutionSeconds,
  );

  /// Create a copy of OrderToBeShippedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderToBeShippedResponseImplCopyWith<_$OrderToBeShippedResponseImpl>
  get copyWith =>
      __$$OrderToBeShippedResponseImplCopyWithImpl<
        _$OrderToBeShippedResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderToBeShippedResponseImplToJson(this);
  }
}

abstract class _OrderToBeShippedResponse implements OrderToBeShippedResponse {
  const factory _OrderToBeShippedResponse({
    @JsonKey(name: 'OrderTobeShippedDetails')
    final List<OrderToBeShippedLine> lines,
    @JsonKey(name: 'jde__status') required final String jdeStatus,
    @JsonKey(name: 'jde__startTimestamp') final String? jdeStartTimestamp,
    @JsonKey(name: 'jde__endTimestamp') final String? jdeEndTimestamp,
    @JsonKey(name: 'jde__serverExecutionSeconds')
    final double? jdeServerExecutionSeconds,
  }) = _$OrderToBeShippedResponseImpl;

  factory _OrderToBeShippedResponse.fromJson(Map<String, dynamic> json) =
      _$OrderToBeShippedResponseImpl.fromJson;

  @override
  @JsonKey(name: 'OrderTobeShippedDetails')
  List<OrderToBeShippedLine> get lines;
  @override
  @JsonKey(name: 'jde__status')
  String get jdeStatus;
  @override
  @JsonKey(name: 'jde__startTimestamp')
  String? get jdeStartTimestamp;
  @override
  @JsonKey(name: 'jde__endTimestamp')
  String? get jdeEndTimestamp;
  @override
  @JsonKey(name: 'jde__serverExecutionSeconds')
  double? get jdeServerExecutionSeconds;

  /// Create a copy of OrderToBeShippedResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderToBeShippedResponseImplCopyWith<_$OrderToBeShippedResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
