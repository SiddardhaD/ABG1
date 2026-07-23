import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repository/item_availability_repository_impl.dart';
import '../state/item_availability_state.dart';

part 'item_availability_view_model.g.dart';

/// View model for the item availability lookup screen. Holds form state and
/// drives [ItemAvailabilityRepository].
@riverpod
class ItemAvailabilityViewModel extends _$ItemAvailabilityViewModel {
  @override
  ItemAvailabilityState build() => const ItemAvailabilityState();

  void updateBusinessUnit(String value) {
    state = state.copyWith(businessUnit: value, errorMessage: '');
  }

  void updateLocation(String value) {
    state = state.copyWith(location: value, errorMessage: '');
  }

  Future<void> search() async {
    if (!state.canSubmit) return;
    state = state.copyWith(status: ItemAvailabilityStatus.loading, errorMessage: '');

    final result = await ref.read(itemAvailabilityRepositoryProvider).getItemAvailability(
          businessUnit: state.businessUnit.trim(),
          location: state.location.trim(),
        );

    result.when(
      (response) {
        state = state.copyWith(
          status: ItemAvailabilityStatus.success,
          rows: response.result.rowset,
        );
      },
      (failure) {
        state = state.copyWith(
          status: ItemAvailabilityStatus.error,
          errorMessage: failure.messageOr('Lookup failed. Please try again.'),
          rows: const [],
        );
      },
    );
  }

  /// Clears the location field and result set after a lookup, so the next
  /// scan gun read starts clean while keeping Business Unit sticky.
  void prepareForNextScan() {
    state = state.copyWith(location: '');
  }
}
