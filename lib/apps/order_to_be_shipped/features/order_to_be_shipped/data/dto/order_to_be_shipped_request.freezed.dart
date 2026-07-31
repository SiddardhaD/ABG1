// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_to_be_shipped_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OrderToBeShippedRequest _$OrderToBeShippedRequestFromJson(
  Map<String, dynamic> json,
) {
  return _OrderToBeShippedRequest.fromJson(json);
}

/// @nodoc
mixin _$OrderToBeShippedRequest {
  String get deviceName => throw _privateConstructorUsedError;
  @JsonKey(name: 'PickNumber')
  String get pickNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'Order_Type')
  String get orderType => throw _privateConstructorUsedError;
  @JsonKey(name: 'Order_Company')
  String get orderCompany => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  /// Serializes this OrderToBeShippedRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderToBeShippedRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderToBeShippedRequestCopyWith<OrderToBeShippedRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderToBeShippedRequestCopyWith<$Res> {
  factory $OrderToBeShippedRequestCopyWith(
    OrderToBeShippedRequest value,
    $Res Function(OrderToBeShippedRequest) then,
  ) = _$OrderToBeShippedRequestCopyWithImpl<$Res, OrderToBeShippedRequest>;
  @useResult
  $Res call({
    String deviceName,
    @JsonKey(name: 'PickNumber') String pickNumber,
    @JsonKey(name: 'Order_Type') String orderType,
    @JsonKey(name: 'Order_Company') String orderCompany,
    String token,
  });
}

/// @nodoc
class _$OrderToBeShippedRequestCopyWithImpl<
  $Res,
  $Val extends OrderToBeShippedRequest
>
    implements $OrderToBeShippedRequestCopyWith<$Res> {
  _$OrderToBeShippedRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderToBeShippedRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceName = null,
    Object? pickNumber = null,
    Object? orderType = null,
    Object? orderCompany = null,
    Object? token = null,
  }) {
    return _then(
      _value.copyWith(
            deviceName: null == deviceName
                ? _value.deviceName
                : deviceName // ignore: cast_nullable_to_non_nullable
                      as String,
            pickNumber: null == pickNumber
                ? _value.pickNumber
                : pickNumber // ignore: cast_nullable_to_non_nullable
                      as String,
            orderType: null == orderType
                ? _value.orderType
                : orderType // ignore: cast_nullable_to_non_nullable
                      as String,
            orderCompany: null == orderCompany
                ? _value.orderCompany
                : orderCompany // ignore: cast_nullable_to_non_nullable
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
abstract class _$$OrderToBeShippedRequestImplCopyWith<$Res>
    implements $OrderToBeShippedRequestCopyWith<$Res> {
  factory _$$OrderToBeShippedRequestImplCopyWith(
    _$OrderToBeShippedRequestImpl value,
    $Res Function(_$OrderToBeShippedRequestImpl) then,
  ) = __$$OrderToBeShippedRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String deviceName,
    @JsonKey(name: 'PickNumber') String pickNumber,
    @JsonKey(name: 'Order_Type') String orderType,
    @JsonKey(name: 'Order_Company') String orderCompany,
    String token,
  });
}

/// @nodoc
class __$$OrderToBeShippedRequestImplCopyWithImpl<$Res>
    extends
        _$OrderToBeShippedRequestCopyWithImpl<
          $Res,
          _$OrderToBeShippedRequestImpl
        >
    implements _$$OrderToBeShippedRequestImplCopyWith<$Res> {
  __$$OrderToBeShippedRequestImplCopyWithImpl(
    _$OrderToBeShippedRequestImpl _value,
    $Res Function(_$OrderToBeShippedRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderToBeShippedRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceName = null,
    Object? pickNumber = null,
    Object? orderType = null,
    Object? orderCompany = null,
    Object? token = null,
  }) {
    return _then(
      _$OrderToBeShippedRequestImpl(
        deviceName: null == deviceName
            ? _value.deviceName
            : deviceName // ignore: cast_nullable_to_non_nullable
                  as String,
        pickNumber: null == pickNumber
            ? _value.pickNumber
            : pickNumber // ignore: cast_nullable_to_non_nullable
                  as String,
        orderType: null == orderType
            ? _value.orderType
            : orderType // ignore: cast_nullable_to_non_nullable
                  as String,
        orderCompany: null == orderCompany
            ? _value.orderCompany
            : orderCompany // ignore: cast_nullable_to_non_nullable
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
class _$OrderToBeShippedRequestImpl implements _OrderToBeShippedRequest {
  const _$OrderToBeShippedRequestImpl({
    required this.deviceName,
    @JsonKey(name: 'PickNumber') required this.pickNumber,
    @JsonKey(name: 'Order_Type') required this.orderType,
    @JsonKey(name: 'Order_Company') required this.orderCompany,
    required this.token,
  });

  factory _$OrderToBeShippedRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderToBeShippedRequestImplFromJson(json);

  @override
  final String deviceName;
  @override
  @JsonKey(name: 'PickNumber')
  final String pickNumber;
  @override
  @JsonKey(name: 'Order_Type')
  final String orderType;
  @override
  @JsonKey(name: 'Order_Company')
  final String orderCompany;
  @override
  final String token;

  @override
  String toString() {
    return 'OrderToBeShippedRequest(deviceName: $deviceName, pickNumber: $pickNumber, orderType: $orderType, orderCompany: $orderCompany, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderToBeShippedRequestImpl &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName) &&
            (identical(other.pickNumber, pickNumber) ||
                other.pickNumber == pickNumber) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            (identical(other.orderCompany, orderCompany) ||
                other.orderCompany == orderCompany) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    deviceName,
    pickNumber,
    orderType,
    orderCompany,
    token,
  );

  /// Create a copy of OrderToBeShippedRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderToBeShippedRequestImplCopyWith<_$OrderToBeShippedRequestImpl>
  get copyWith =>
      __$$OrderToBeShippedRequestImplCopyWithImpl<
        _$OrderToBeShippedRequestImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderToBeShippedRequestImplToJson(this);
  }
}

abstract class _OrderToBeShippedRequest implements OrderToBeShippedRequest {
  const factory _OrderToBeShippedRequest({
    required final String deviceName,
    @JsonKey(name: 'PickNumber') required final String pickNumber,
    @JsonKey(name: 'Order_Type') required final String orderType,
    @JsonKey(name: 'Order_Company') required final String orderCompany,
    required final String token,
  }) = _$OrderToBeShippedRequestImpl;

  factory _OrderToBeShippedRequest.fromJson(Map<String, dynamic> json) =
      _$OrderToBeShippedRequestImpl.fromJson;

  @override
  String get deviceName;
  @override
  @JsonKey(name: 'PickNumber')
  String get pickNumber;
  @override
  @JsonKey(name: 'Order_Type')
  String get orderType;
  @override
  @JsonKey(name: 'Order_Company')
  String get orderCompany;
  @override
  String get token;

  /// Create a copy of OrderToBeShippedRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderToBeShippedRequestImplCopyWith<_$OrderToBeShippedRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}
