// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_availability_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ItemAvailabilityState {
  String get businessUnit => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  ItemAvailabilityStatus get status => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<ItemAvailabilityRow> get rows => throw _privateConstructorUsedError;

  /// Create a copy of ItemAvailabilityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemAvailabilityStateCopyWith<ItemAvailabilityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemAvailabilityStateCopyWith<$Res> {
  factory $ItemAvailabilityStateCopyWith(
    ItemAvailabilityState value,
    $Res Function(ItemAvailabilityState) then,
  ) = _$ItemAvailabilityStateCopyWithImpl<$Res, ItemAvailabilityState>;
  @useResult
  $Res call({
    String businessUnit,
    String location,
    ItemAvailabilityStatus status,
    String errorMessage,
    List<ItemAvailabilityRow> rows,
  });
}

/// @nodoc
class _$ItemAvailabilityStateCopyWithImpl<
  $Res,
  $Val extends ItemAvailabilityState
>
    implements $ItemAvailabilityStateCopyWith<$Res> {
  _$ItemAvailabilityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemAvailabilityState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? businessUnit = null,
    Object? location = null,
    Object? status = null,
    Object? errorMessage = null,
    Object? rows = null,
  }) {
    return _then(
      _value.copyWith(
            businessUnit: null == businessUnit
                ? _value.businessUnit
                : businessUnit // ignore: cast_nullable_to_non_nullable
                      as String,
            location: null == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as ItemAvailabilityStatus,
            errorMessage: null == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                      as String,
            rows: null == rows
                ? _value.rows
                : rows // ignore: cast_nullable_to_non_nullable
                      as List<ItemAvailabilityRow>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ItemAvailabilityStateImplCopyWith<$Res>
    implements $ItemAvailabilityStateCopyWith<$Res> {
  factory _$$ItemAvailabilityStateImplCopyWith(
    _$ItemAvailabilityStateImpl value,
    $Res Function(_$ItemAvailabilityStateImpl) then,
  ) = __$$ItemAvailabilityStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String businessUnit,
    String location,
    ItemAvailabilityStatus status,
    String errorMessage,
    List<ItemAvailabilityRow> rows,
  });
}

/// @nodoc
class __$$ItemAvailabilityStateImplCopyWithImpl<$Res>
    extends
        _$ItemAvailabilityStateCopyWithImpl<$Res, _$ItemAvailabilityStateImpl>
    implements _$$ItemAvailabilityStateImplCopyWith<$Res> {
  __$$ItemAvailabilityStateImplCopyWithImpl(
    _$ItemAvailabilityStateImpl _value,
    $Res Function(_$ItemAvailabilityStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemAvailabilityState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? businessUnit = null,
    Object? location = null,
    Object? status = null,
    Object? errorMessage = null,
    Object? rows = null,
  }) {
    return _then(
      _$ItemAvailabilityStateImpl(
        businessUnit: null == businessUnit
            ? _value.businessUnit
            : businessUnit // ignore: cast_nullable_to_non_nullable
                  as String,
        location: null == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as ItemAvailabilityStatus,
        errorMessage: null == errorMessage
            ? _value.errorMessage
            : errorMessage // ignore: cast_nullable_to_non_nullable
                  as String,
        rows: null == rows
            ? _value._rows
            : rows // ignore: cast_nullable_to_non_nullable
                  as List<ItemAvailabilityRow>,
      ),
    );
  }
}

/// @nodoc

class _$ItemAvailabilityStateImpl extends _ItemAvailabilityState {
  const _$ItemAvailabilityStateImpl({
    this.businessUnit = '',
    this.location = '',
    this.status = ItemAvailabilityStatus.idle,
    this.errorMessage = '',
    final List<ItemAvailabilityRow> rows = const <ItemAvailabilityRow>[],
  }) : _rows = rows,
       super._();

  @override
  @JsonKey()
  final String businessUnit;
  @override
  @JsonKey()
  final String location;
  @override
  @JsonKey()
  final ItemAvailabilityStatus status;
  @override
  @JsonKey()
  final String errorMessage;
  final List<ItemAvailabilityRow> _rows;
  @override
  @JsonKey()
  List<ItemAvailabilityRow> get rows {
    if (_rows is EqualUnmodifiableListView) return _rows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rows);
  }

  @override
  String toString() {
    return 'ItemAvailabilityState(businessUnit: $businessUnit, location: $location, status: $status, errorMessage: $errorMessage, rows: $rows)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemAvailabilityStateImpl &&
            (identical(other.businessUnit, businessUnit) ||
                other.businessUnit == businessUnit) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._rows, _rows));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    businessUnit,
    location,
    status,
    errorMessage,
    const DeepCollectionEquality().hash(_rows),
  );

  /// Create a copy of ItemAvailabilityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemAvailabilityStateImplCopyWith<_$ItemAvailabilityStateImpl>
  get copyWith =>
      __$$ItemAvailabilityStateImplCopyWithImpl<_$ItemAvailabilityStateImpl>(
        this,
        _$identity,
      );
}

abstract class _ItemAvailabilityState extends ItemAvailabilityState {
  const factory _ItemAvailabilityState({
    final String businessUnit,
    final String location,
    final ItemAvailabilityStatus status,
    final String errorMessage,
    final List<ItemAvailabilityRow> rows,
  }) = _$ItemAvailabilityStateImpl;
  const _ItemAvailabilityState._() : super._();

  @override
  String get businessUnit;
  @override
  String get location;
  @override
  ItemAvailabilityStatus get status;
  @override
  String get errorMessage;
  @override
  List<ItemAvailabilityRow> get rows;

  /// Create a copy of ItemAvailabilityState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemAvailabilityStateImplCopyWith<_$ItemAvailabilityStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
