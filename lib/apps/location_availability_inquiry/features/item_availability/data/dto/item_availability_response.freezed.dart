// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_availability_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ItemAvailabilityResponse _$ItemAvailabilityResponseFromJson(
  Map<String, dynamic> json,
) {
  return _ItemAvailabilityResponse.fromJson(json);
}

/// @nodoc
mixin _$ItemAvailabilityResponse {
  @JsonKey(name: 'FR_ItemAvailability_1')
  ItemAvailabilityResult get result => throw _privateConstructorUsedError;
  @JsonKey(name: 'jde__status')
  String get jdeStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'jde__startTimestamp')
  String? get jdeStartTimestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'jde__endTimestamp')
  String? get jdeEndTimestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'jde__serverExecutionSeconds')
  double? get jdeServerExecutionSeconds => throw _privateConstructorUsedError;

  /// Serializes this ItemAvailabilityResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ItemAvailabilityResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemAvailabilityResponseCopyWith<ItemAvailabilityResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemAvailabilityResponseCopyWith<$Res> {
  factory $ItemAvailabilityResponseCopyWith(
    ItemAvailabilityResponse value,
    $Res Function(ItemAvailabilityResponse) then,
  ) = _$ItemAvailabilityResponseCopyWithImpl<$Res, ItemAvailabilityResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'FR_ItemAvailability_1') ItemAvailabilityResult result,
    @JsonKey(name: 'jde__status') String jdeStatus,
    @JsonKey(name: 'jde__startTimestamp') String? jdeStartTimestamp,
    @JsonKey(name: 'jde__endTimestamp') String? jdeEndTimestamp,
    @JsonKey(name: 'jde__serverExecutionSeconds')
    double? jdeServerExecutionSeconds,
  });

  $ItemAvailabilityResultCopyWith<$Res> get result;
}

/// @nodoc
class _$ItemAvailabilityResponseCopyWithImpl<
  $Res,
  $Val extends ItemAvailabilityResponse
>
    implements $ItemAvailabilityResponseCopyWith<$Res> {
  _$ItemAvailabilityResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemAvailabilityResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? jdeStatus = null,
    Object? jdeStartTimestamp = freezed,
    Object? jdeEndTimestamp = freezed,
    Object? jdeServerExecutionSeconds = freezed,
  }) {
    return _then(
      _value.copyWith(
            result: null == result
                ? _value.result
                : result // ignore: cast_nullable_to_non_nullable
                      as ItemAvailabilityResult,
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

  /// Create a copy of ItemAvailabilityResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItemAvailabilityResultCopyWith<$Res> get result {
    return $ItemAvailabilityResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemAvailabilityResponseImplCopyWith<$Res>
    implements $ItemAvailabilityResponseCopyWith<$Res> {
  factory _$$ItemAvailabilityResponseImplCopyWith(
    _$ItemAvailabilityResponseImpl value,
    $Res Function(_$ItemAvailabilityResponseImpl) then,
  ) = __$$ItemAvailabilityResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'FR_ItemAvailability_1') ItemAvailabilityResult result,
    @JsonKey(name: 'jde__status') String jdeStatus,
    @JsonKey(name: 'jde__startTimestamp') String? jdeStartTimestamp,
    @JsonKey(name: 'jde__endTimestamp') String? jdeEndTimestamp,
    @JsonKey(name: 'jde__serverExecutionSeconds')
    double? jdeServerExecutionSeconds,
  });

  @override
  $ItemAvailabilityResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$ItemAvailabilityResponseImplCopyWithImpl<$Res>
    extends
        _$ItemAvailabilityResponseCopyWithImpl<
          $Res,
          _$ItemAvailabilityResponseImpl
        >
    implements _$$ItemAvailabilityResponseImplCopyWith<$Res> {
  __$$ItemAvailabilityResponseImplCopyWithImpl(
    _$ItemAvailabilityResponseImpl _value,
    $Res Function(_$ItemAvailabilityResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemAvailabilityResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? jdeStatus = null,
    Object? jdeStartTimestamp = freezed,
    Object? jdeEndTimestamp = freezed,
    Object? jdeServerExecutionSeconds = freezed,
  }) {
    return _then(
      _$ItemAvailabilityResponseImpl(
        result: null == result
            ? _value.result
            : result // ignore: cast_nullable_to_non_nullable
                  as ItemAvailabilityResult,
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
class _$ItemAvailabilityResponseImpl implements _ItemAvailabilityResponse {
  const _$ItemAvailabilityResponseImpl({
    @JsonKey(name: 'FR_ItemAvailability_1') required this.result,
    @JsonKey(name: 'jde__status') required this.jdeStatus,
    @JsonKey(name: 'jde__startTimestamp') this.jdeStartTimestamp,
    @JsonKey(name: 'jde__endTimestamp') this.jdeEndTimestamp,
    @JsonKey(name: 'jde__serverExecutionSeconds')
    this.jdeServerExecutionSeconds,
  });

  factory _$ItemAvailabilityResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemAvailabilityResponseImplFromJson(json);

  @override
  @JsonKey(name: 'FR_ItemAvailability_1')
  final ItemAvailabilityResult result;
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
    return 'ItemAvailabilityResponse(result: $result, jdeStatus: $jdeStatus, jdeStartTimestamp: $jdeStartTimestamp, jdeEndTimestamp: $jdeEndTimestamp, jdeServerExecutionSeconds: $jdeServerExecutionSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemAvailabilityResponseImpl &&
            (identical(other.result, result) || other.result == result) &&
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
    result,
    jdeStatus,
    jdeStartTimestamp,
    jdeEndTimestamp,
    jdeServerExecutionSeconds,
  );

  /// Create a copy of ItemAvailabilityResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemAvailabilityResponseImplCopyWith<_$ItemAvailabilityResponseImpl>
  get copyWith =>
      __$$ItemAvailabilityResponseImplCopyWithImpl<
        _$ItemAvailabilityResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemAvailabilityResponseImplToJson(this);
  }
}

abstract class _ItemAvailabilityResponse implements ItemAvailabilityResponse {
  const factory _ItemAvailabilityResponse({
    @JsonKey(name: 'FR_ItemAvailability_1')
    required final ItemAvailabilityResult result,
    @JsonKey(name: 'jde__status') required final String jdeStatus,
    @JsonKey(name: 'jde__startTimestamp') final String? jdeStartTimestamp,
    @JsonKey(name: 'jde__endTimestamp') final String? jdeEndTimestamp,
    @JsonKey(name: 'jde__serverExecutionSeconds')
    final double? jdeServerExecutionSeconds,
  }) = _$ItemAvailabilityResponseImpl;

  factory _ItemAvailabilityResponse.fromJson(Map<String, dynamic> json) =
      _$ItemAvailabilityResponseImpl.fromJson;

  @override
  @JsonKey(name: 'FR_ItemAvailability_1')
  ItemAvailabilityResult get result;
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

  /// Create a copy of ItemAvailabilityResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemAvailabilityResponseImplCopyWith<_$ItemAvailabilityResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
