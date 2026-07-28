// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_to_be_shipped_line.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OrderToBeShippedLine _$OrderToBeShippedLineFromJson(Map<String, dynamic> json) {
  return _OrderToBeShippedLine.fromJson(json);
}

/// @nodoc
mixin _$OrderToBeShippedLine {
  @JsonKey(name: 'OrderCompany')
  String? get orderCompany => throw _privateConstructorUsedError;
  @JsonKey(name: 'OrderNumber')
  num? get orderNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'OrderType')
  String? get orderType => throw _privateConstructorUsedError;
  @JsonKey(name: 'LineNumber')
  num? get lineNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'BusinessUnit')
  String? get businessUnit => throw _privateConstructorUsedError;
  @JsonKey(name: 'AddressNumber')
  num? get addressNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'AddressNumber_Desc')
  String? get addressNumberDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'ShipTo')
  num? get shipTo => throw _privateConstructorUsedError;
  @JsonKey(name: 'ShipTo_Desc')
  String? get shipToDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'ItemNumber')
  String? get itemNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'ItemNumber_Desc')
  String? get itemNumberDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'Location')
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'LotSerialNumber')
  String? get lotSerialNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'LineType')
  String? get lineType => throw _privateConstructorUsedError;
  @JsonKey(name: 'NextStat')
  String? get nextStat => throw _privateConstructorUsedError;
  @JsonKey(name: 'NextStat_Desc')
  String? get nextStatDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'LastStat')
  String? get lastStat => throw _privateConstructorUsedError;
  @JsonKey(name: 'LastStat_Desc')
  String? get lastStatDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'UOM')
  String? get uom => throw _privateConstructorUsedError;
  @JsonKey(name: 'QuantityOrdered')
  num? get quantityOrdered => throw _privateConstructorUsedError;
  @JsonKey(name: 'QuantityShipped')
  num? get quantityShipped => throw _privateConstructorUsedError;
  @JsonKey(name: 'QuantityBackordered')
  num? get quantityBackordered => throw _privateConstructorUsedError;
  @JsonKey(name: 'QuantityCanceled')
  num? get quantityCanceled => throw _privateConstructorUsedError;
  @JsonKey(name: 'ContainerI.D.')
  String? get containerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'SecUM')
  String? get secUm => throw _privateConstructorUsedError;
  @JsonKey(name: 'CarrierNumber')
  num? get carrierNumber => throw _privateConstructorUsedError;

  /// Serializes this OrderToBeShippedLine to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderToBeShippedLine
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderToBeShippedLineCopyWith<OrderToBeShippedLine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderToBeShippedLineCopyWith<$Res> {
  factory $OrderToBeShippedLineCopyWith(
    OrderToBeShippedLine value,
    $Res Function(OrderToBeShippedLine) then,
  ) = _$OrderToBeShippedLineCopyWithImpl<$Res, OrderToBeShippedLine>;
  @useResult
  $Res call({
    @JsonKey(name: 'OrderCompany') String? orderCompany,
    @JsonKey(name: 'OrderNumber') num? orderNumber,
    @JsonKey(name: 'OrderType') String? orderType,
    @JsonKey(name: 'LineNumber') num? lineNumber,
    @JsonKey(name: 'BusinessUnit') String? businessUnit,
    @JsonKey(name: 'AddressNumber') num? addressNumber,
    @JsonKey(name: 'AddressNumber_Desc') String? addressNumberDescription,
    @JsonKey(name: 'ShipTo') num? shipTo,
    @JsonKey(name: 'ShipTo_Desc') String? shipToDescription,
    @JsonKey(name: 'ItemNumber') String? itemNumber,
    @JsonKey(name: 'ItemNumber_Desc') String? itemNumberDescription,
    @JsonKey(name: 'Location') String? location,
    @JsonKey(name: 'LotSerialNumber') String? lotSerialNumber,
    @JsonKey(name: 'LineType') String? lineType,
    @JsonKey(name: 'NextStat') String? nextStat,
    @JsonKey(name: 'NextStat_Desc') String? nextStatDescription,
    @JsonKey(name: 'LastStat') String? lastStat,
    @JsonKey(name: 'LastStat_Desc') String? lastStatDescription,
    @JsonKey(name: 'UOM') String? uom,
    @JsonKey(name: 'QuantityOrdered') num? quantityOrdered,
    @JsonKey(name: 'QuantityShipped') num? quantityShipped,
    @JsonKey(name: 'QuantityBackordered') num? quantityBackordered,
    @JsonKey(name: 'QuantityCanceled') num? quantityCanceled,
    @JsonKey(name: 'ContainerI.D.') String? containerId,
    @JsonKey(name: 'SecUM') String? secUm,
    @JsonKey(name: 'CarrierNumber') num? carrierNumber,
  });
}

/// @nodoc
class _$OrderToBeShippedLineCopyWithImpl<
  $Res,
  $Val extends OrderToBeShippedLine
>
    implements $OrderToBeShippedLineCopyWith<$Res> {
  _$OrderToBeShippedLineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderToBeShippedLine
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderCompany = freezed,
    Object? orderNumber = freezed,
    Object? orderType = freezed,
    Object? lineNumber = freezed,
    Object? businessUnit = freezed,
    Object? addressNumber = freezed,
    Object? addressNumberDescription = freezed,
    Object? shipTo = freezed,
    Object? shipToDescription = freezed,
    Object? itemNumber = freezed,
    Object? itemNumberDescription = freezed,
    Object? location = freezed,
    Object? lotSerialNumber = freezed,
    Object? lineType = freezed,
    Object? nextStat = freezed,
    Object? nextStatDescription = freezed,
    Object? lastStat = freezed,
    Object? lastStatDescription = freezed,
    Object? uom = freezed,
    Object? quantityOrdered = freezed,
    Object? quantityShipped = freezed,
    Object? quantityBackordered = freezed,
    Object? quantityCanceled = freezed,
    Object? containerId = freezed,
    Object? secUm = freezed,
    Object? carrierNumber = freezed,
  }) {
    return _then(
      _value.copyWith(
            orderCompany: freezed == orderCompany
                ? _value.orderCompany
                : orderCompany // ignore: cast_nullable_to_non_nullable
                      as String?,
            orderNumber: freezed == orderNumber
                ? _value.orderNumber
                : orderNumber // ignore: cast_nullable_to_non_nullable
                      as num?,
            orderType: freezed == orderType
                ? _value.orderType
                : orderType // ignore: cast_nullable_to_non_nullable
                      as String?,
            lineNumber: freezed == lineNumber
                ? _value.lineNumber
                : lineNumber // ignore: cast_nullable_to_non_nullable
                      as num?,
            businessUnit: freezed == businessUnit
                ? _value.businessUnit
                : businessUnit // ignore: cast_nullable_to_non_nullable
                      as String?,
            addressNumber: freezed == addressNumber
                ? _value.addressNumber
                : addressNumber // ignore: cast_nullable_to_non_nullable
                      as num?,
            addressNumberDescription: freezed == addressNumberDescription
                ? _value.addressNumberDescription
                : addressNumberDescription // ignore: cast_nullable_to_non_nullable
                      as String?,
            shipTo: freezed == shipTo
                ? _value.shipTo
                : shipTo // ignore: cast_nullable_to_non_nullable
                      as num?,
            shipToDescription: freezed == shipToDescription
                ? _value.shipToDescription
                : shipToDescription // ignore: cast_nullable_to_non_nullable
                      as String?,
            itemNumber: freezed == itemNumber
                ? _value.itemNumber
                : itemNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            itemNumberDescription: freezed == itemNumberDescription
                ? _value.itemNumberDescription
                : itemNumberDescription // ignore: cast_nullable_to_non_nullable
                      as String?,
            location: freezed == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as String?,
            lotSerialNumber: freezed == lotSerialNumber
                ? _value.lotSerialNumber
                : lotSerialNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            lineType: freezed == lineType
                ? _value.lineType
                : lineType // ignore: cast_nullable_to_non_nullable
                      as String?,
            nextStat: freezed == nextStat
                ? _value.nextStat
                : nextStat // ignore: cast_nullable_to_non_nullable
                      as String?,
            nextStatDescription: freezed == nextStatDescription
                ? _value.nextStatDescription
                : nextStatDescription // ignore: cast_nullable_to_non_nullable
                      as String?,
            lastStat: freezed == lastStat
                ? _value.lastStat
                : lastStat // ignore: cast_nullable_to_non_nullable
                      as String?,
            lastStatDescription: freezed == lastStatDescription
                ? _value.lastStatDescription
                : lastStatDescription // ignore: cast_nullable_to_non_nullable
                      as String?,
            uom: freezed == uom
                ? _value.uom
                : uom // ignore: cast_nullable_to_non_nullable
                      as String?,
            quantityOrdered: freezed == quantityOrdered
                ? _value.quantityOrdered
                : quantityOrdered // ignore: cast_nullable_to_non_nullable
                      as num?,
            quantityShipped: freezed == quantityShipped
                ? _value.quantityShipped
                : quantityShipped // ignore: cast_nullable_to_non_nullable
                      as num?,
            quantityBackordered: freezed == quantityBackordered
                ? _value.quantityBackordered
                : quantityBackordered // ignore: cast_nullable_to_non_nullable
                      as num?,
            quantityCanceled: freezed == quantityCanceled
                ? _value.quantityCanceled
                : quantityCanceled // ignore: cast_nullable_to_non_nullable
                      as num?,
            containerId: freezed == containerId
                ? _value.containerId
                : containerId // ignore: cast_nullable_to_non_nullable
                      as String?,
            secUm: freezed == secUm
                ? _value.secUm
                : secUm // ignore: cast_nullable_to_non_nullable
                      as String?,
            carrierNumber: freezed == carrierNumber
                ? _value.carrierNumber
                : carrierNumber // ignore: cast_nullable_to_non_nullable
                      as num?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderToBeShippedLineImplCopyWith<$Res>
    implements $OrderToBeShippedLineCopyWith<$Res> {
  factory _$$OrderToBeShippedLineImplCopyWith(
    _$OrderToBeShippedLineImpl value,
    $Res Function(_$OrderToBeShippedLineImpl) then,
  ) = __$$OrderToBeShippedLineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'OrderCompany') String? orderCompany,
    @JsonKey(name: 'OrderNumber') num? orderNumber,
    @JsonKey(name: 'OrderType') String? orderType,
    @JsonKey(name: 'LineNumber') num? lineNumber,
    @JsonKey(name: 'BusinessUnit') String? businessUnit,
    @JsonKey(name: 'AddressNumber') num? addressNumber,
    @JsonKey(name: 'AddressNumber_Desc') String? addressNumberDescription,
    @JsonKey(name: 'ShipTo') num? shipTo,
    @JsonKey(name: 'ShipTo_Desc') String? shipToDescription,
    @JsonKey(name: 'ItemNumber') String? itemNumber,
    @JsonKey(name: 'ItemNumber_Desc') String? itemNumberDescription,
    @JsonKey(name: 'Location') String? location,
    @JsonKey(name: 'LotSerialNumber') String? lotSerialNumber,
    @JsonKey(name: 'LineType') String? lineType,
    @JsonKey(name: 'NextStat') String? nextStat,
    @JsonKey(name: 'NextStat_Desc') String? nextStatDescription,
    @JsonKey(name: 'LastStat') String? lastStat,
    @JsonKey(name: 'LastStat_Desc') String? lastStatDescription,
    @JsonKey(name: 'UOM') String? uom,
    @JsonKey(name: 'QuantityOrdered') num? quantityOrdered,
    @JsonKey(name: 'QuantityShipped') num? quantityShipped,
    @JsonKey(name: 'QuantityBackordered') num? quantityBackordered,
    @JsonKey(name: 'QuantityCanceled') num? quantityCanceled,
    @JsonKey(name: 'ContainerI.D.') String? containerId,
    @JsonKey(name: 'SecUM') String? secUm,
    @JsonKey(name: 'CarrierNumber') num? carrierNumber,
  });
}

/// @nodoc
class __$$OrderToBeShippedLineImplCopyWithImpl<$Res>
    extends _$OrderToBeShippedLineCopyWithImpl<$Res, _$OrderToBeShippedLineImpl>
    implements _$$OrderToBeShippedLineImplCopyWith<$Res> {
  __$$OrderToBeShippedLineImplCopyWithImpl(
    _$OrderToBeShippedLineImpl _value,
    $Res Function(_$OrderToBeShippedLineImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderToBeShippedLine
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderCompany = freezed,
    Object? orderNumber = freezed,
    Object? orderType = freezed,
    Object? lineNumber = freezed,
    Object? businessUnit = freezed,
    Object? addressNumber = freezed,
    Object? addressNumberDescription = freezed,
    Object? shipTo = freezed,
    Object? shipToDescription = freezed,
    Object? itemNumber = freezed,
    Object? itemNumberDescription = freezed,
    Object? location = freezed,
    Object? lotSerialNumber = freezed,
    Object? lineType = freezed,
    Object? nextStat = freezed,
    Object? nextStatDescription = freezed,
    Object? lastStat = freezed,
    Object? lastStatDescription = freezed,
    Object? uom = freezed,
    Object? quantityOrdered = freezed,
    Object? quantityShipped = freezed,
    Object? quantityBackordered = freezed,
    Object? quantityCanceled = freezed,
    Object? containerId = freezed,
    Object? secUm = freezed,
    Object? carrierNumber = freezed,
  }) {
    return _then(
      _$OrderToBeShippedLineImpl(
        orderCompany: freezed == orderCompany
            ? _value.orderCompany
            : orderCompany // ignore: cast_nullable_to_non_nullable
                  as String?,
        orderNumber: freezed == orderNumber
            ? _value.orderNumber
            : orderNumber // ignore: cast_nullable_to_non_nullable
                  as num?,
        orderType: freezed == orderType
            ? _value.orderType
            : orderType // ignore: cast_nullable_to_non_nullable
                  as String?,
        lineNumber: freezed == lineNumber
            ? _value.lineNumber
            : lineNumber // ignore: cast_nullable_to_non_nullable
                  as num?,
        businessUnit: freezed == businessUnit
            ? _value.businessUnit
            : businessUnit // ignore: cast_nullable_to_non_nullable
                  as String?,
        addressNumber: freezed == addressNumber
            ? _value.addressNumber
            : addressNumber // ignore: cast_nullable_to_non_nullable
                  as num?,
        addressNumberDescription: freezed == addressNumberDescription
            ? _value.addressNumberDescription
            : addressNumberDescription // ignore: cast_nullable_to_non_nullable
                  as String?,
        shipTo: freezed == shipTo
            ? _value.shipTo
            : shipTo // ignore: cast_nullable_to_non_nullable
                  as num?,
        shipToDescription: freezed == shipToDescription
            ? _value.shipToDescription
            : shipToDescription // ignore: cast_nullable_to_non_nullable
                  as String?,
        itemNumber: freezed == itemNumber
            ? _value.itemNumber
            : itemNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        itemNumberDescription: freezed == itemNumberDescription
            ? _value.itemNumberDescription
            : itemNumberDescription // ignore: cast_nullable_to_non_nullable
                  as String?,
        location: freezed == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as String?,
        lotSerialNumber: freezed == lotSerialNumber
            ? _value.lotSerialNumber
            : lotSerialNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        lineType: freezed == lineType
            ? _value.lineType
            : lineType // ignore: cast_nullable_to_non_nullable
                  as String?,
        nextStat: freezed == nextStat
            ? _value.nextStat
            : nextStat // ignore: cast_nullable_to_non_nullable
                  as String?,
        nextStatDescription: freezed == nextStatDescription
            ? _value.nextStatDescription
            : nextStatDescription // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastStat: freezed == lastStat
            ? _value.lastStat
            : lastStat // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastStatDescription: freezed == lastStatDescription
            ? _value.lastStatDescription
            : lastStatDescription // ignore: cast_nullable_to_non_nullable
                  as String?,
        uom: freezed == uom
            ? _value.uom
            : uom // ignore: cast_nullable_to_non_nullable
                  as String?,
        quantityOrdered: freezed == quantityOrdered
            ? _value.quantityOrdered
            : quantityOrdered // ignore: cast_nullable_to_non_nullable
                  as num?,
        quantityShipped: freezed == quantityShipped
            ? _value.quantityShipped
            : quantityShipped // ignore: cast_nullable_to_non_nullable
                  as num?,
        quantityBackordered: freezed == quantityBackordered
            ? _value.quantityBackordered
            : quantityBackordered // ignore: cast_nullable_to_non_nullable
                  as num?,
        quantityCanceled: freezed == quantityCanceled
            ? _value.quantityCanceled
            : quantityCanceled // ignore: cast_nullable_to_non_nullable
                  as num?,
        containerId: freezed == containerId
            ? _value.containerId
            : containerId // ignore: cast_nullable_to_non_nullable
                  as String?,
        secUm: freezed == secUm
            ? _value.secUm
            : secUm // ignore: cast_nullable_to_non_nullable
                  as String?,
        carrierNumber: freezed == carrierNumber
            ? _value.carrierNumber
            : carrierNumber // ignore: cast_nullable_to_non_nullable
                  as num?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderToBeShippedLineImpl implements _OrderToBeShippedLine {
  const _$OrderToBeShippedLineImpl({
    @JsonKey(name: 'OrderCompany') this.orderCompany,
    @JsonKey(name: 'OrderNumber') this.orderNumber,
    @JsonKey(name: 'OrderType') this.orderType,
    @JsonKey(name: 'LineNumber') this.lineNumber,
    @JsonKey(name: 'BusinessUnit') this.businessUnit,
    @JsonKey(name: 'AddressNumber') this.addressNumber,
    @JsonKey(name: 'AddressNumber_Desc') this.addressNumberDescription,
    @JsonKey(name: 'ShipTo') this.shipTo,
    @JsonKey(name: 'ShipTo_Desc') this.shipToDescription,
    @JsonKey(name: 'ItemNumber') this.itemNumber,
    @JsonKey(name: 'ItemNumber_Desc') this.itemNumberDescription,
    @JsonKey(name: 'Location') this.location,
    @JsonKey(name: 'LotSerialNumber') this.lotSerialNumber,
    @JsonKey(name: 'LineType') this.lineType,
    @JsonKey(name: 'NextStat') this.nextStat,
    @JsonKey(name: 'NextStat_Desc') this.nextStatDescription,
    @JsonKey(name: 'LastStat') this.lastStat,
    @JsonKey(name: 'LastStat_Desc') this.lastStatDescription,
    @JsonKey(name: 'UOM') this.uom,
    @JsonKey(name: 'QuantityOrdered') this.quantityOrdered,
    @JsonKey(name: 'QuantityShipped') this.quantityShipped,
    @JsonKey(name: 'QuantityBackordered') this.quantityBackordered,
    @JsonKey(name: 'QuantityCanceled') this.quantityCanceled,
    @JsonKey(name: 'ContainerI.D.') this.containerId,
    @JsonKey(name: 'SecUM') this.secUm,
    @JsonKey(name: 'CarrierNumber') this.carrierNumber,
  });

  factory _$OrderToBeShippedLineImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderToBeShippedLineImplFromJson(json);

  @override
  @JsonKey(name: 'OrderCompany')
  final String? orderCompany;
  @override
  @JsonKey(name: 'OrderNumber')
  final num? orderNumber;
  @override
  @JsonKey(name: 'OrderType')
  final String? orderType;
  @override
  @JsonKey(name: 'LineNumber')
  final num? lineNumber;
  @override
  @JsonKey(name: 'BusinessUnit')
  final String? businessUnit;
  @override
  @JsonKey(name: 'AddressNumber')
  final num? addressNumber;
  @override
  @JsonKey(name: 'AddressNumber_Desc')
  final String? addressNumberDescription;
  @override
  @JsonKey(name: 'ShipTo')
  final num? shipTo;
  @override
  @JsonKey(name: 'ShipTo_Desc')
  final String? shipToDescription;
  @override
  @JsonKey(name: 'ItemNumber')
  final String? itemNumber;
  @override
  @JsonKey(name: 'ItemNumber_Desc')
  final String? itemNumberDescription;
  @override
  @JsonKey(name: 'Location')
  final String? location;
  @override
  @JsonKey(name: 'LotSerialNumber')
  final String? lotSerialNumber;
  @override
  @JsonKey(name: 'LineType')
  final String? lineType;
  @override
  @JsonKey(name: 'NextStat')
  final String? nextStat;
  @override
  @JsonKey(name: 'NextStat_Desc')
  final String? nextStatDescription;
  @override
  @JsonKey(name: 'LastStat')
  final String? lastStat;
  @override
  @JsonKey(name: 'LastStat_Desc')
  final String? lastStatDescription;
  @override
  @JsonKey(name: 'UOM')
  final String? uom;
  @override
  @JsonKey(name: 'QuantityOrdered')
  final num? quantityOrdered;
  @override
  @JsonKey(name: 'QuantityShipped')
  final num? quantityShipped;
  @override
  @JsonKey(name: 'QuantityBackordered')
  final num? quantityBackordered;
  @override
  @JsonKey(name: 'QuantityCanceled')
  final num? quantityCanceled;
  @override
  @JsonKey(name: 'ContainerI.D.')
  final String? containerId;
  @override
  @JsonKey(name: 'SecUM')
  final String? secUm;
  @override
  @JsonKey(name: 'CarrierNumber')
  final num? carrierNumber;

  @override
  String toString() {
    return 'OrderToBeShippedLine(orderCompany: $orderCompany, orderNumber: $orderNumber, orderType: $orderType, lineNumber: $lineNumber, businessUnit: $businessUnit, addressNumber: $addressNumber, addressNumberDescription: $addressNumberDescription, shipTo: $shipTo, shipToDescription: $shipToDescription, itemNumber: $itemNumber, itemNumberDescription: $itemNumberDescription, location: $location, lotSerialNumber: $lotSerialNumber, lineType: $lineType, nextStat: $nextStat, nextStatDescription: $nextStatDescription, lastStat: $lastStat, lastStatDescription: $lastStatDescription, uom: $uom, quantityOrdered: $quantityOrdered, quantityShipped: $quantityShipped, quantityBackordered: $quantityBackordered, quantityCanceled: $quantityCanceled, containerId: $containerId, secUm: $secUm, carrierNumber: $carrierNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderToBeShippedLineImpl &&
            (identical(other.orderCompany, orderCompany) ||
                other.orderCompany == orderCompany) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            (identical(other.lineNumber, lineNumber) ||
                other.lineNumber == lineNumber) &&
            (identical(other.businessUnit, businessUnit) ||
                other.businessUnit == businessUnit) &&
            (identical(other.addressNumber, addressNumber) ||
                other.addressNumber == addressNumber) &&
            (identical(
                  other.addressNumberDescription,
                  addressNumberDescription,
                ) ||
                other.addressNumberDescription == addressNumberDescription) &&
            (identical(other.shipTo, shipTo) || other.shipTo == shipTo) &&
            (identical(other.shipToDescription, shipToDescription) ||
                other.shipToDescription == shipToDescription) &&
            (identical(other.itemNumber, itemNumber) ||
                other.itemNumber == itemNumber) &&
            (identical(other.itemNumberDescription, itemNumberDescription) ||
                other.itemNumberDescription == itemNumberDescription) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.lotSerialNumber, lotSerialNumber) ||
                other.lotSerialNumber == lotSerialNumber) &&
            (identical(other.lineType, lineType) ||
                other.lineType == lineType) &&
            (identical(other.nextStat, nextStat) ||
                other.nextStat == nextStat) &&
            (identical(other.nextStatDescription, nextStatDescription) ||
                other.nextStatDescription == nextStatDescription) &&
            (identical(other.lastStat, lastStat) ||
                other.lastStat == lastStat) &&
            (identical(other.lastStatDescription, lastStatDescription) ||
                other.lastStatDescription == lastStatDescription) &&
            (identical(other.uom, uom) || other.uom == uom) &&
            (identical(other.quantityOrdered, quantityOrdered) ||
                other.quantityOrdered == quantityOrdered) &&
            (identical(other.quantityShipped, quantityShipped) ||
                other.quantityShipped == quantityShipped) &&
            (identical(other.quantityBackordered, quantityBackordered) ||
                other.quantityBackordered == quantityBackordered) &&
            (identical(other.quantityCanceled, quantityCanceled) ||
                other.quantityCanceled == quantityCanceled) &&
            (identical(other.containerId, containerId) ||
                other.containerId == containerId) &&
            (identical(other.secUm, secUm) || other.secUm == secUm) &&
            (identical(other.carrierNumber, carrierNumber) ||
                other.carrierNumber == carrierNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    orderCompany,
    orderNumber,
    orderType,
    lineNumber,
    businessUnit,
    addressNumber,
    addressNumberDescription,
    shipTo,
    shipToDescription,
    itemNumber,
    itemNumberDescription,
    location,
    lotSerialNumber,
    lineType,
    nextStat,
    nextStatDescription,
    lastStat,
    lastStatDescription,
    uom,
    quantityOrdered,
    quantityShipped,
    quantityBackordered,
    quantityCanceled,
    containerId,
    secUm,
    carrierNumber,
  ]);

  /// Create a copy of OrderToBeShippedLine
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderToBeShippedLineImplCopyWith<_$OrderToBeShippedLineImpl>
  get copyWith =>
      __$$OrderToBeShippedLineImplCopyWithImpl<_$OrderToBeShippedLineImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderToBeShippedLineImplToJson(this);
  }
}

abstract class _OrderToBeShippedLine implements OrderToBeShippedLine {
  const factory _OrderToBeShippedLine({
    @JsonKey(name: 'OrderCompany') final String? orderCompany,
    @JsonKey(name: 'OrderNumber') final num? orderNumber,
    @JsonKey(name: 'OrderType') final String? orderType,
    @JsonKey(name: 'LineNumber') final num? lineNumber,
    @JsonKey(name: 'BusinessUnit') final String? businessUnit,
    @JsonKey(name: 'AddressNumber') final num? addressNumber,
    @JsonKey(name: 'AddressNumber_Desc') final String? addressNumberDescription,
    @JsonKey(name: 'ShipTo') final num? shipTo,
    @JsonKey(name: 'ShipTo_Desc') final String? shipToDescription,
    @JsonKey(name: 'ItemNumber') final String? itemNumber,
    @JsonKey(name: 'ItemNumber_Desc') final String? itemNumberDescription,
    @JsonKey(name: 'Location') final String? location,
    @JsonKey(name: 'LotSerialNumber') final String? lotSerialNumber,
    @JsonKey(name: 'LineType') final String? lineType,
    @JsonKey(name: 'NextStat') final String? nextStat,
    @JsonKey(name: 'NextStat_Desc') final String? nextStatDescription,
    @JsonKey(name: 'LastStat') final String? lastStat,
    @JsonKey(name: 'LastStat_Desc') final String? lastStatDescription,
    @JsonKey(name: 'UOM') final String? uom,
    @JsonKey(name: 'QuantityOrdered') final num? quantityOrdered,
    @JsonKey(name: 'QuantityShipped') final num? quantityShipped,
    @JsonKey(name: 'QuantityBackordered') final num? quantityBackordered,
    @JsonKey(name: 'QuantityCanceled') final num? quantityCanceled,
    @JsonKey(name: 'ContainerI.D.') final String? containerId,
    @JsonKey(name: 'SecUM') final String? secUm,
    @JsonKey(name: 'CarrierNumber') final num? carrierNumber,
  }) = _$OrderToBeShippedLineImpl;

  factory _OrderToBeShippedLine.fromJson(Map<String, dynamic> json) =
      _$OrderToBeShippedLineImpl.fromJson;

  @override
  @JsonKey(name: 'OrderCompany')
  String? get orderCompany;
  @override
  @JsonKey(name: 'OrderNumber')
  num? get orderNumber;
  @override
  @JsonKey(name: 'OrderType')
  String? get orderType;
  @override
  @JsonKey(name: 'LineNumber')
  num? get lineNumber;
  @override
  @JsonKey(name: 'BusinessUnit')
  String? get businessUnit;
  @override
  @JsonKey(name: 'AddressNumber')
  num? get addressNumber;
  @override
  @JsonKey(name: 'AddressNumber_Desc')
  String? get addressNumberDescription;
  @override
  @JsonKey(name: 'ShipTo')
  num? get shipTo;
  @override
  @JsonKey(name: 'ShipTo_Desc')
  String? get shipToDescription;
  @override
  @JsonKey(name: 'ItemNumber')
  String? get itemNumber;
  @override
  @JsonKey(name: 'ItemNumber_Desc')
  String? get itemNumberDescription;
  @override
  @JsonKey(name: 'Location')
  String? get location;
  @override
  @JsonKey(name: 'LotSerialNumber')
  String? get lotSerialNumber;
  @override
  @JsonKey(name: 'LineType')
  String? get lineType;
  @override
  @JsonKey(name: 'NextStat')
  String? get nextStat;
  @override
  @JsonKey(name: 'NextStat_Desc')
  String? get nextStatDescription;
  @override
  @JsonKey(name: 'LastStat')
  String? get lastStat;
  @override
  @JsonKey(name: 'LastStat_Desc')
  String? get lastStatDescription;
  @override
  @JsonKey(name: 'UOM')
  String? get uom;
  @override
  @JsonKey(name: 'QuantityOrdered')
  num? get quantityOrdered;
  @override
  @JsonKey(name: 'QuantityShipped')
  num? get quantityShipped;
  @override
  @JsonKey(name: 'QuantityBackordered')
  num? get quantityBackordered;
  @override
  @JsonKey(name: 'QuantityCanceled')
  num? get quantityCanceled;
  @override
  @JsonKey(name: 'ContainerI.D.')
  String? get containerId;
  @override
  @JsonKey(name: 'SecUM')
  String? get secUm;
  @override
  @JsonKey(name: 'CarrierNumber')
  num? get carrierNumber;

  /// Create a copy of OrderToBeShippedLine
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderToBeShippedLineImplCopyWith<_$OrderToBeShippedLineImpl>
  get copyWith => throw _privateConstructorUsedError;
}
