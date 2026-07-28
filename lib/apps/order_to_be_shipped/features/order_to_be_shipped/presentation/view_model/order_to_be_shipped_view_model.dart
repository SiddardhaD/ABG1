import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repository/order_to_be_shipped_repository_impl.dart';
import '../state/order_to_be_shipped_state.dart';

part 'order_to_be_shipped_view_model.g.dart';

/// View model for the Order to be Shipped screen. Holds the three order
/// fields and drives [OrderToBeShippedRepository].
@riverpod
class OrderToBeShippedViewModel extends _$OrderToBeShippedViewModel {
  @override
  OrderToBeShippedState build() => const OrderToBeShippedState();

  void updateOrderNumber(String value) {
    state = state.copyWith(orderNumber: value, errorMessage: '');
  }

  void updateOrderType(String value) {
    state = state.copyWith(orderType: value, errorMessage: '');
  }

  void updateOrderCompany(String value) {
    state = state.copyWith(orderCompany: value, errorMessage: '');
  }

  /// Parses the single composite barcode printed on shipment labels into
  /// the three order fields, then updates state.
  ///
  /// ASSUMPTION (unconfirmed — adjust here if the real format differs):
  /// hyphen-delimited segments in the order
  /// `<Order Company>-<Order Type>-<Order Number>`, based on the sample
  /// barcode "00119-S0-2600008" (5-digit numeric company, 2-char type,
  /// numeric order — matches standard JDE conventions).
  bool applyScannedBarcode(String raw) {
    final segments = raw.trim().split('-');
    if (segments.length != 3 || segments.any((s) => s.trim().isEmpty)) {
      state = state.copyWith(
        status: OrderToBeShippedStatus.error,
        errorMessage: 'Unrecognized barcode format: "$raw".',
      );
      return false;
    }

    state = state.copyWith(
      orderCompany: segments[0].trim(),
      orderType: segments[1].trim(),
      orderNumber: segments[2].trim(),
      status: OrderToBeShippedStatus.idle,
      errorMessage: '',
    );
    return true;
  }

  Future<void> confirm() async {
    if (!state.canSubmit) return;
    state = state.copyWith(status: OrderToBeShippedStatus.loading, errorMessage: '');

    final result = await ref.read(orderToBeShippedRepositoryProvider).confirmOrderToBeShipped(
          orderNumber: state.orderNumber.trim(),
          orderType: state.orderType.trim(),
          orderCompany: state.orderCompany.trim(),
        );

    result.when(
      (response) {
        state = state.copyWith(
          status: OrderToBeShippedStatus.success,
          confirmedLines: response.lines,
        );
      },
      (failure) {
        state = state.copyWith(
          status: OrderToBeShippedStatus.error,
          errorMessage: failure.messageOr('Confirmation failed. Please try again.'),
        );
      },
    );
  }

  void reset() => state = const OrderToBeShippedState();
}
