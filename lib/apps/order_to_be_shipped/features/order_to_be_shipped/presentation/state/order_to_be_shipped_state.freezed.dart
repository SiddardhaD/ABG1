// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_to_be_shipped_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$OrderToBeShippedState {
  String get orderNumber => throw _privateConstructorUsedError;
  String get orderType => throw _privateConstructorUsedError;
  String get orderCompany => throw _privateConstructorUsedError;
  OrderToBeShippedStatus get status => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<OrderToBeShippedLine> get confirmedLines =>
      throw _privateConstructorUsedError;
  bool get isConfirmingShipment => throw _privateConstructorUsedError;
  bool get shipmentConfirmed =>
      throw _privateConstructorUsedError; // True once any line's shipped quantity was edited away from what
  // JDE_ORCH_56_OrderToBeShipped originally returned. Determines whether
  // confirming calls the plain endpoint or the "UpdatedQua" one with the
  // full (edited + unedited) line list.
  bool get hasEditedQuantities => throw _privateConstructorUsedError;

  /// Create a copy of OrderToBeShippedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderToBeShippedStateCopyWith<OrderToBeShippedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderToBeShippedStateCopyWith<$Res> {
  factory $OrderToBeShippedStateCopyWith(
    OrderToBeShippedState value,
    $Res Function(OrderToBeShippedState) then,
  ) = _$OrderToBeShippedStateCopyWithImpl<$Res, OrderToBeShippedState>;
  @useResult
  $Res call({
    String orderNumber,
    String orderType,
    String orderCompany,
    OrderToBeShippedStatus status,
    String errorMessage,
    List<OrderToBeShippedLine> confirmedLines,
    bool isConfirmingShipment,
    bool shipmentConfirmed,
    bool hasEditedQuantities,
  });
}

/// @nodoc
class _$OrderToBeShippedStateCopyWithImpl<
  $Res,
  $Val extends OrderToBeShippedState
>
    implements $OrderToBeShippedStateCopyWith<$Res> {
  _$OrderToBeShippedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderToBeShippedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderNumber = null,
    Object? orderType = null,
    Object? orderCompany = null,
    Object? status = null,
    Object? errorMessage = null,
    Object? confirmedLines = null,
    Object? isConfirmingShipment = null,
    Object? shipmentConfirmed = null,
    Object? hasEditedQuantities = null,
  }) {
    return _then(
      _value.copyWith(
            orderNumber: null == orderNumber
                ? _value.orderNumber
                : orderNumber // ignore: cast_nullable_to_non_nullable
                      as String,
            orderType: null == orderType
                ? _value.orderType
                : orderType // ignore: cast_nullable_to_non_nullable
                      as String,
            orderCompany: null == orderCompany
                ? _value.orderCompany
                : orderCompany // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as OrderToBeShippedStatus,
            errorMessage: null == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                      as String,
            confirmedLines: null == confirmedLines
                ? _value.confirmedLines
                : confirmedLines // ignore: cast_nullable_to_non_nullable
                      as List<OrderToBeShippedLine>,
            isConfirmingShipment: null == isConfirmingShipment
                ? _value.isConfirmingShipment
                : isConfirmingShipment // ignore: cast_nullable_to_non_nullable
                      as bool,
            shipmentConfirmed: null == shipmentConfirmed
                ? _value.shipmentConfirmed
                : shipmentConfirmed // ignore: cast_nullable_to_non_nullable
                      as bool,
            hasEditedQuantities: null == hasEditedQuantities
                ? _value.hasEditedQuantities
                : hasEditedQuantities // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderToBeShippedStateImplCopyWith<$Res>
    implements $OrderToBeShippedStateCopyWith<$Res> {
  factory _$$OrderToBeShippedStateImplCopyWith(
    _$OrderToBeShippedStateImpl value,
    $Res Function(_$OrderToBeShippedStateImpl) then,
  ) = __$$OrderToBeShippedStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String orderNumber,
    String orderType,
    String orderCompany,
    OrderToBeShippedStatus status,
    String errorMessage,
    List<OrderToBeShippedLine> confirmedLines,
    bool isConfirmingShipment,
    bool shipmentConfirmed,
    bool hasEditedQuantities,
  });
}

/// @nodoc
class __$$OrderToBeShippedStateImplCopyWithImpl<$Res>
    extends
        _$OrderToBeShippedStateCopyWithImpl<$Res, _$OrderToBeShippedStateImpl>
    implements _$$OrderToBeShippedStateImplCopyWith<$Res> {
  __$$OrderToBeShippedStateImplCopyWithImpl(
    _$OrderToBeShippedStateImpl _value,
    $Res Function(_$OrderToBeShippedStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderToBeShippedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderNumber = null,
    Object? orderType = null,
    Object? orderCompany = null,
    Object? status = null,
    Object? errorMessage = null,
    Object? confirmedLines = null,
    Object? isConfirmingShipment = null,
    Object? shipmentConfirmed = null,
    Object? hasEditedQuantities = null,
  }) {
    return _then(
      _$OrderToBeShippedStateImpl(
        orderNumber: null == orderNumber
            ? _value.orderNumber
            : orderNumber // ignore: cast_nullable_to_non_nullable
                  as String,
        orderType: null == orderType
            ? _value.orderType
            : orderType // ignore: cast_nullable_to_non_nullable
                  as String,
        orderCompany: null == orderCompany
            ? _value.orderCompany
            : orderCompany // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as OrderToBeShippedStatus,
        errorMessage: null == errorMessage
            ? _value.errorMessage
            : errorMessage // ignore: cast_nullable_to_non_nullable
                  as String,
        confirmedLines: null == confirmedLines
            ? _value._confirmedLines
            : confirmedLines // ignore: cast_nullable_to_non_nullable
                  as List<OrderToBeShippedLine>,
        isConfirmingShipment: null == isConfirmingShipment
            ? _value.isConfirmingShipment
            : isConfirmingShipment // ignore: cast_nullable_to_non_nullable
                  as bool,
        shipmentConfirmed: null == shipmentConfirmed
            ? _value.shipmentConfirmed
            : shipmentConfirmed // ignore: cast_nullable_to_non_nullable
                  as bool,
        hasEditedQuantities: null == hasEditedQuantities
            ? _value.hasEditedQuantities
            : hasEditedQuantities // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$OrderToBeShippedStateImpl extends _OrderToBeShippedState {
  const _$OrderToBeShippedStateImpl({
    this.orderNumber = '',
    this.orderType = '',
    this.orderCompany = '',
    this.status = OrderToBeShippedStatus.idle,
    this.errorMessage = '',
    final List<OrderToBeShippedLine> confirmedLines =
        const <OrderToBeShippedLine>[],
    this.isConfirmingShipment = false,
    this.shipmentConfirmed = false,
    this.hasEditedQuantities = false,
  }) : _confirmedLines = confirmedLines,
       super._();

  @override
  @JsonKey()
  final String orderNumber;
  @override
  @JsonKey()
  final String orderType;
  @override
  @JsonKey()
  final String orderCompany;
  @override
  @JsonKey()
  final OrderToBeShippedStatus status;
  @override
  @JsonKey()
  final String errorMessage;
  final List<OrderToBeShippedLine> _confirmedLines;
  @override
  @JsonKey()
  List<OrderToBeShippedLine> get confirmedLines {
    if (_confirmedLines is EqualUnmodifiableListView) return _confirmedLines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_confirmedLines);
  }

  @override
  @JsonKey()
  final bool isConfirmingShipment;
  @override
  @JsonKey()
  final bool shipmentConfirmed;
  // True once any line's shipped quantity was edited away from what
  // JDE_ORCH_56_OrderToBeShipped originally returned. Determines whether
  // confirming calls the plain endpoint or the "UpdatedQua" one with the
  // full (edited + unedited) line list.
  @override
  @JsonKey()
  final bool hasEditedQuantities;

  @override
  String toString() {
    return 'OrderToBeShippedState(orderNumber: $orderNumber, orderType: $orderType, orderCompany: $orderCompany, status: $status, errorMessage: $errorMessage, confirmedLines: $confirmedLines, isConfirmingShipment: $isConfirmingShipment, shipmentConfirmed: $shipmentConfirmed, hasEditedQuantities: $hasEditedQuantities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderToBeShippedStateImpl &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            (identical(other.orderCompany, orderCompany) ||
                other.orderCompany == orderCompany) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(
              other._confirmedLines,
              _confirmedLines,
            ) &&
            (identical(other.isConfirmingShipment, isConfirmingShipment) ||
                other.isConfirmingShipment == isConfirmingShipment) &&
            (identical(other.shipmentConfirmed, shipmentConfirmed) ||
                other.shipmentConfirmed == shipmentConfirmed) &&
            (identical(other.hasEditedQuantities, hasEditedQuantities) ||
                other.hasEditedQuantities == hasEditedQuantities));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    orderNumber,
    orderType,
    orderCompany,
    status,
    errorMessage,
    const DeepCollectionEquality().hash(_confirmedLines),
    isConfirmingShipment,
    shipmentConfirmed,
    hasEditedQuantities,
  );

  /// Create a copy of OrderToBeShippedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderToBeShippedStateImplCopyWith<_$OrderToBeShippedStateImpl>
  get copyWith =>
      __$$OrderToBeShippedStateImplCopyWithImpl<_$OrderToBeShippedStateImpl>(
        this,
        _$identity,
      );
}

abstract class _OrderToBeShippedState extends OrderToBeShippedState {
  const factory _OrderToBeShippedState({
    final String orderNumber,
    final String orderType,
    final String orderCompany,
    final OrderToBeShippedStatus status,
    final String errorMessage,
    final List<OrderToBeShippedLine> confirmedLines,
    final bool isConfirmingShipment,
    final bool shipmentConfirmed,
    final bool hasEditedQuantities,
  }) = _$OrderToBeShippedStateImpl;
  const _OrderToBeShippedState._() : super._();

  @override
  String get orderNumber;
  @override
  String get orderType;
  @override
  String get orderCompany;
  @override
  OrderToBeShippedStatus get status;
  @override
  String get errorMessage;
  @override
  List<OrderToBeShippedLine> get confirmedLines;
  @override
  bool get isConfirmingShipment;
  @override
  bool get shipmentConfirmed; // True once any line's shipped quantity was edited away from what
  // JDE_ORCH_56_OrderToBeShipped originally returned. Determines whether
  // confirming calls the plain endpoint or the "UpdatedQua" one with the
  // full (edited + unedited) line list.
  @override
  bool get hasEditedQuantities;

  /// Create a copy of OrderToBeShippedState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderToBeShippedStateImplCopyWith<_$OrderToBeShippedStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
