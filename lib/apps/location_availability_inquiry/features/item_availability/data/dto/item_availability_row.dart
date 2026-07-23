import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_availability_row.freezed.dart';
part 'item_availability_row.g.dart';

/// One row of the `FR_ItemAvailability_1` rowset.
@freezed
class ItemAvailabilityRow with _$ItemAvailabilityRow {
  const factory ItemAvailabilityRow({
    @JsonKey(name: '2nd Item Number') String? secondItemNumber,
    @JsonKey(name: '3rd Item Number') String? thirdItemNumber,
    @JsonKey(name: 'Description') String? description,
    @JsonKey(name: 'Lot Expiration Date') String? lotExpirationDate,
    @JsonKey(name: 'Lot Manufacturing Date') String? lotManufacturingDate,
    @JsonKey(name: 'Lot Status') String? lotStatus,
    @JsonKey(name: 'Lot/Serial') String? lotSerial,
    @JsonKey(name: 'Quantity Available') @Default(0) num quantityAvailable,
    @JsonKey(name: 'Quantity Inbound') @Default(0) num quantityInbound,
    @JsonKey(name: 'Quantity On Hand') @Default(0) num quantityOnHand,
    @JsonKey(name: 'Quantity Outbound') @Default(0) num quantityOutbound,
    @JsonKey(name: 'Sec UM') String? secondaryUnitOfMeasure,
    @JsonKey(name: 'Short Item') int? shortItem,
  }) = _ItemAvailabilityRow;

  factory ItemAvailabilityRow.fromJson(Map<String, dynamic> json) =>
      _$ItemAvailabilityRowFromJson(json);
}
