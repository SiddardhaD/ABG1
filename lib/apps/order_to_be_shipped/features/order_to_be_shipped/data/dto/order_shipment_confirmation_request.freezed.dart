// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_shipment_confirmation_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OrderShipmentConfirmationRequest _$OrderShipmentConfirmationRequestFromJson(
  Map<String, dynamic> json,
) {
  return _OrderShipmentConfirmationRequest.fromJson(json);
}

/// @nodoc
mixin _$OrderShipmentConfirmationRequest {
  String get deviceName => throw _privateConstructorUsedError;
  @JsonKey(name: 'Pick_Slip_Number')
  String get pickSlipNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'Order_Company')
  String get orderCompany => throw _privateConstructorUsedError;
  @JsonKey(name: 'Order_Type')
  String get orderType => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  /// Serializes this OrderShipmentConfirmationRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderShipmentConfirmationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderShipmentConfirmationRequestCopyWith<OrderShipmentConfirmationRequest>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderShipmentConfirmationRequestCopyWith<$Res> {
  factory $OrderShipmentConfirmationRequestCopyWith(
    OrderShipmentConfirmationRequest value,
    $Res Function(OrderShipmentConfirmationRequest) then,
  ) =
      _$OrderShipmentConfirmationRequestCopyWithImpl<
        $Res,
        OrderShipmentConfirmationRequest
      >;
  @useResult
  $Res call({
    String deviceName,
    @JsonKey(name: 'Pick_Slip_Number') String pickSlipNumber,
    @JsonKey(name: 'Order_Company') String orderCompany,
    @JsonKey(name: 'Order_Type') String orderType,
    String token,
  });
}

/// @nodoc
class _$OrderShipmentConfirmationRequestCopyWithImpl<
  $Res,
  $Val extends OrderShipmentConfirmationRequest
>
    implements $OrderShipmentConfirmationRequestCopyWith<$Res> {
  _$OrderShipmentConfirmationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderShipmentConfirmationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceName = null,
    Object? pickSlipNumber = null,
    Object? orderCompany = null,
    Object? orderType = null,
    Object? token = null,
  }) {
    return _then(
      _value.copyWith(
            deviceName: null == deviceName
                ? _value.deviceName
                : deviceName // ignore: cast_nullable_to_non_nullable
                      as String,
            pickSlipNumber: null == pickSlipNumber
                ? _value.pickSlipNumber
                : pickSlipNumber // ignore: cast_nullable_to_non_nullable
                      as String,
            orderCompany: null == orderCompany
                ? _value.orderCompany
                : orderCompany // ignore: cast_nullable_to_non_nullable
                      as String,
            orderType: null == orderType
                ? _value.orderType
                : orderType // ignore: cast_nullable_to_non_nullable
                      as String,
            token: null == token
                ? _value.token
                : token // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderShipmentConfirmationRequestImplCopyWith<$Res>
    implements $OrderShipmentConfirmationRequestCopyWith<$Res> {
  factory _$$OrderShipmentConfirmationRequestImplCopyWith(
    _$OrderShipmentConfirmationRequestImpl value,
    $Res Function(_$OrderShipmentConfirmationRequestImpl) then,
  ) = __$$OrderShipmentConfirmationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String deviceName,
    @JsonKey(name: 'Pick_Slip_Number') String pickSlipNumber,
    @JsonKey(name: 'Order_Company') String orderCompany,
    @JsonKey(name: 'Order_Type') String orderType,
    String token,
  });
}

/// @nodoc
class __$$OrderShipmentConfirmationRequestImplCopyWithImpl<$Res>
    extends
        _$OrderShipmentConfirmationRequestCopyWithImpl<
          $Res,
          _$OrderShipmentConfirmationRequestImpl
        >
    implements _$$OrderShipmentConfirmationRequestImplCopyWith<$Res> {
  __$$OrderShipmentConfirmationRequestImplCopyWithImpl(
    _$OrderShipmentConfirmationRequestImpl _value,
    $Res Function(_$OrderShipmentConfirmationRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderShipmentConfirmationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceName = null,
    Object? pickSlipNumber = null,
    Object? orderCompany = null,
    Object? orderType = null,
    Object? token = null,
  }) {
    return _then(
      _$OrderShipmentConfirmationRequestImpl(
        deviceName: null == deviceName
            ? _value.deviceName
            : deviceName // ignore: cast_nullable_to_non_nullable
                  as String,
        pickSlipNumber: null == pickSlipNumber
            ? _value.pickSlipNumber
            : pickSlipNumber // ignore: cast_nullable_to_non_nullable
                  as String,
        orderCompany: null == orderCompany
            ? _value.orderCompany
            : orderCompany // ignore: cast_nullable_to_non_nullable
                  as String,
        orderType: null == orderType
            ? _value.orderType
            : orderType // ignore: cast_nullable_to_non_nullable
                  as String,
        token: null == token
            ? _value.token
            : token // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderShipmentConfirmationRequestImpl
    implements _OrderShipmentConfirmationRequest {
  const _$OrderShipmentConfirmationRequestImpl({
    required this.deviceName,
    @JsonKey(name: 'Pick_Slip_Number') required this.pickSlipNumber,
    @JsonKey(name: 'Order_Company') required this.orderCompany,
    @JsonKey(name: 'Order_Type') required this.orderType,
    required this.token,
  });

  factory _$OrderShipmentConfirmationRequestImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$OrderShipmentConfirmationRequestImplFromJson(json);

  @override
  final String deviceName;
  @override
  @JsonKey(name: 'Pick_Slip_Number')
  final String pickSlipNumber;
  @override
  @JsonKey(name: 'Order_Company')
  final String orderCompany;
  @override
  @JsonKey(name: 'Order_Type')
  final String orderType;
  @override
  final String token;

  @override
  String toString() {
    return 'OrderShipmentConfirmationRequest(deviceName: $deviceName, pickSlipNumber: $pickSlipNumber, orderCompany: $orderCompany, orderType: $orderType, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderShipmentConfirmationRequestImpl &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName) &&
            (identical(other.pickSlipNumber, pickSlipNumber) ||
                other.pickSlipNumber == pickSlipNumber) &&
            (identical(other.orderCompany, orderCompany) ||
                other.orderCompany == orderCompany) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    deviceName,
    pickSlipNumber,
    orderCompany,
    orderType,
    token,
  );

  /// Create a copy of OrderShipmentConfirmationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderShipmentConfirmationRequestImplCopyWith<
    _$OrderShipmentConfirmationRequestImpl
  >
  get copyWith =>
      __$$OrderShipmentConfirmationRequestImplCopyWithImpl<
        _$OrderShipmentConfirmationRequestImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderShipmentConfirmationRequestImplToJson(this);
  }
}

abstract class _OrderShipmentConfirmationRequest
    implements OrderShipmentConfirmationRequest {
  const factory _OrderShipmentConfirmationRequest({
    required final String deviceName,
    @JsonKey(name: 'Pick_Slip_Number') required final String pickSlipNumber,
    @JsonKey(name: 'Order_Company') required final String orderCompany,
    @JsonKey(name: 'Order_Type') required final String orderType,
    required final String token,
  }) = _$OrderShipmentConfirmationRequestImpl;

  factory _OrderShipmentConfirmationRequest.fromJson(
    Map<String, dynamic> json,
  ) = _$OrderShipmentConfirmationRequestImpl.fromJson;

  @override
  String get deviceName;
  @override
  @JsonKey(name: 'Pick_Slip_Number')
  String get pickSlipNumber;
  @override
  @JsonKey(name: 'Order_Company')
  String get orderCompany;
  @override
  @JsonKey(name: 'Order_Type')
  String get orderType;
  @override
  String get token;

  /// Create a copy of OrderShipmentConfirmationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderShipmentConfirmationRequestImplCopyWith<
    _$OrderShipmentConfirmationRequestImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
