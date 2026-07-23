import 'package:freezed_annotation/freezed_annotation.dart';

import 'item_availability_row.dart';

part 'item_availability_result.freezed.dart';
part 'item_availability_result.g.dart';

/// The `FR_ItemAvailability_1` grid payload.
@freezed
class ItemAvailabilityResult with _$ItemAvailabilityResult {
  const factory ItemAvailabilityResult({
    required String formId,
    required String gridId,
    required String title,
    @Default(<ItemAvailabilityRow>[]) List<ItemAvailabilityRow> rowset,
    @Default(0) int records,
    @Default(false) bool moreRecords,
  }) = _ItemAvailabilityResult;

  factory ItemAvailabilityResult.fromJson(Map<String, dynamic> json) =>
      _$ItemAvailabilityResultFromJson(json);
}
