// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipment_detail_line.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ShipmentDetailLine _$ShipmentDetailLineFromJson(Map<String, dynamic> json) {
  return _ShipmentDetailLine.fromJson(json);
}

/// @nodoc
mixin _$ShipmentDetailLine {
  @JsonKey(name: 'LineNumber')
  String get lineNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'ItemNumber')
  String get itemNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'QuantityShipped')
  String get quantityShipped => throw _privateConstructorUsedError;
  @JsonKey(name: 'OrderNumber')
  String get orderNumber => throw _privateConstructorUsedError;

  /// Serializes this ShipmentDetailLine to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShipmentDetailLine
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShipmentDetailLineCopyWith<ShipmentDetailLine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentDetailLineCopyWith<$Res> {
  factory $ShipmentDetailLineCopyWith(
    ShipmentDetailLine value,
    $Res Function(ShipmentDetailLine) then,
  ) = _$ShipmentDetailLineCopyWithImpl<$Res, ShipmentDetailLine>;
  @useResult
  $Res call({
    @JsonKey(name: 'LineNumber') String lineNumber,
    @JsonKey(name: 'ItemNumber') String itemNumber,
    @JsonKey(name: 'QuantityShipped') String quantityShipped,
    @JsonKey(name: 'OrderNumber') String orderNumber,
  });
}

/// @nodoc
class _$ShipmentDetailLineCopyWithImpl<$Res, $Val extends ShipmentDetailLine>
    implements $ShipmentDetailLineCopyWith<$Res> {
  _$ShipmentDetailLineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShipmentDetailLine
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lineNumber = null,
    Object? itemNumber = null,
    Object? quantityShipped = null,
    Object? orderNumber = null,
  }) {
    return _then(
      _value.copyWith(
            lineNumber: null == lineNumber
                ? _value.lineNumber
                : lineNumber // ignore: cast_nullable_to_non_nullable
                      as String,
            itemNumber: null == itemNumber
                ? _value.itemNumber
                : itemNumber // ignore: cast_nullable_to_non_nullable
                      as String,
            quantityShipped: null == quantityShipped
                ? _value.quantityShipped
                : quantityShipped // ignore: cast_nullable_to_non_nullable
                      as String,
            orderNumber: null == orderNumber
                ? _value.orderNumber
                : orderNumber // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ShipmentDetailLineImplCopyWith<$Res>
    implements $ShipmentDetailLineCopyWith<$Res> {
  factory _$$ShipmentDetailLineImplCopyWith(
    _$ShipmentDetailLineImpl value,
    $Res Function(_$ShipmentDetailLineImpl) then,
  ) = __$$ShipmentDetailLineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'LineNumber') String lineNumber,
    @JsonKey(name: 'ItemNumber') String itemNumber,
    @JsonKey(name: 'QuantityShipped') String quantityShipped,
    @JsonKey(name: 'OrderNumber') String orderNumber,
  });
}

/// @nodoc
class __$$ShipmentDetailLineImplCopyWithImpl<$Res>
    extends _$ShipmentDetailLineCopyWithImpl<$Res, _$ShipmentDetailLineImpl>
    implements _$$ShipmentDetailLineImplCopyWith<$Res> {
  __$$ShipmentDetailLineImplCopyWithImpl(
    _$ShipmentDetailLineImpl _value,
    $Res Function(_$ShipmentDetailLineImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ShipmentDetailLine
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lineNumber = null,
    Object? itemNumber = null,
    Object? quantityShipped = null,
    Object? orderNumber = null,
  }) {
    return _then(
      _$ShipmentDetailLineImpl(
        lineNumber: null == lineNumber
            ? _value.lineNumber
            : lineNumber // ignore: cast_nullable_to_non_nullable
                  as String,
        itemNumber: null == itemNumber
            ? _value.itemNumber
            : itemNumber // ignore: cast_nullable_to_non_nullable
                  as String,
        quantityShipped: null == quantityShipped
            ? _value.quantityShipped
            : quantityShipped // ignore: cast_nullable_to_non_nullable
                  as String,
        orderNumber: null == orderNumber
            ? _value.orderNumber
            : orderNumber // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ShipmentDetailLineImpl implements _ShipmentDetailLine {
  const _$ShipmentDetailLineImpl({
    @JsonKey(name: 'LineNumber') required this.lineNumber,
    @JsonKey(name: 'ItemNumber') required this.itemNumber,
    @JsonKey(name: 'QuantityShipped') required this.quantityShipped,
    @JsonKey(name: 'OrderNumber') required this.orderNumber,
  });

  factory _$ShipmentDetailLineImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShipmentDetailLineImplFromJson(json);

  @override
  @JsonKey(name: 'LineNumber')
  final String lineNumber;
  @override
  @JsonKey(name: 'ItemNumber')
  final String itemNumber;
  @override
  @JsonKey(name: 'QuantityShipped')
  final String quantityShipped;
  @override
  @JsonKey(name: 'OrderNumber')
  final String orderNumber;

  @override
  String toString() {
    return 'ShipmentDetailLine(lineNumber: $lineNumber, itemNumber: $itemNumber, quantityShipped: $quantityShipped, orderNumber: $orderNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipmentDetailLineImpl &&
            (identical(other.lineNumber, lineNumber) ||
                other.lineNumber == lineNumber) &&
            (identical(other.itemNumber, itemNumber) ||
                other.itemNumber == itemNumber) &&
            (identical(other.quantityShipped, quantityShipped) ||
                other.quantityShipped == quantityShipped) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    lineNumber,
    itemNumber,
    quantityShipped,
    orderNumber,
  );

  /// Create a copy of ShipmentDetailLine
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipmentDetailLineImplCopyWith<_$ShipmentDetailLineImpl> get copyWith =>
      __$$ShipmentDetailLineImplCopyWithImpl<_$ShipmentDetailLineImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ShipmentDetailLineImplToJson(this);
  }
}

abstract class _ShipmentDetailLine implements ShipmentDetailLine {
  const factory _ShipmentDetailLine({
    @JsonKey(name: 'LineNumber') required final String lineNumber,
    @JsonKey(name: 'ItemNumber') required final String itemNumber,
    @JsonKey(name: 'QuantityShipped') required final String quantityShipped,
    @JsonKey(name: 'OrderNumber') required final String orderNumber,
  }) = _$ShipmentDetailLineImpl;

  factory _ShipmentDetailLine.fromJson(Map<String, dynamic> json) =
      _$ShipmentDetailLineImpl.fromJson;

  @override
  @JsonKey(name: 'LineNumber')
  String get lineNumber;
  @override
  @JsonKey(name: 'ItemNumber')
  String get itemNumber;
  @override
  @JsonKey(name: 'QuantityShipped')
  String get quantityShipped;
  @override
  @JsonKey(name: 'OrderNumber')
  String get orderNumber;

  /// Create a copy of ShipmentDetailLine
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShipmentDetailLineImplCopyWith<_$ShipmentDetailLineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
