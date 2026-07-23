import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/dto/item_availability_row.dart';

part 'item_availability_state.freezed.dart';

enum ItemAvailabilityStatus { idle, loading, success, error }

/// Immutable UI state for the item availability lookup screen.
@freezed
class ItemAvailabilityState with _$ItemAvailabilityState {
  const factory ItemAvailabilityState({
    @Default('') String businessUnit,
    @Default('') String location,
    @Default(ItemAvailabilityStatus.idle) ItemAvailabilityStatus status,
    @Default('') String errorMessage,
    @Default(<ItemAvailabilityRow>[]) List<ItemAvailabilityRow> rows,
  }) = _ItemAvailabilityState;

  const ItemAvailabilityState._();

  bool get isLoading => status == ItemAvailabilityStatus.loading;

  bool get canSubmit =>
      businessUnit.trim().isNotEmpty && location.trim().isNotEmpty && !isLoading;
}
