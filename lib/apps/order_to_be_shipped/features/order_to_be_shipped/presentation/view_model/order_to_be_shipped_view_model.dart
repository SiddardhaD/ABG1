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

  /// Step 1: fetches the order's shipment line details (read-only — doesn't
  /// change anything server-side). Review these before calling
  /// [confirmShipment].
  Future<void> fetchDetails() async {
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
          shipmentConfirmed: false,
          hasEditedQuantities: false,
        );
      },
      (failure) {
        state = state.copyWith(
          status: OrderToBeShippedStatus.error,
          errorMessage: failure.messageOr('Could not fetch order details. Please try again.'),
        );
      },
    );
  }

  /// Edits a single line's shipped quantity. The caller (the line's UI
  /// tile) is responsible for bounds-checking against that line's
  /// `QuantityOrdered` before calling this — this just applies the change
  /// and flags the order as having edited quantities, which routes
  /// [confirmShipment] to the "UpdatedQua" endpoint with every line.
  void updateLineQuantity(num lineNumber, num newQuantity) {
    final updatedLines = [
      for (final line in state.confirmedLines)
        if (line.lineNumber == lineNumber) line.copyWith(quantityShipped: newQuantity) else line,
    ];
    state = state.copyWith(confirmedLines: updatedLines, hasEditedQuantities: true);
  }

  /// Step 2: the actual mutating confirmation, only reachable after
  /// [fetchDetails] succeeded (see [OrderToBeShippedState.canConfirmShipment]).
  /// Routes to `JDE_ORCH_56_OrderShipmentConfirmationUpdatedQua` (with every
  /// line) if any quantity was edited, otherwise the plain confirmation
  /// call — per spec, the detailed endpoint is only needed when something
  /// actually changed.
  Future<void> confirmShipment() async {
    if (!state.canConfirmShipment) return;
    state = state.copyWith(isConfirmingShipment: true, errorMessage: '');

    final repository = ref.read(orderToBeShippedRepositoryProvider);
    final result = state.hasEditedQuantities
        ? await repository.confirmShipmentWithUpdatedQuantities(
            orderNumber: state.orderNumber.trim(),
            orderType: state.orderType.trim(),
            orderCompany: state.orderCompany.trim(),
            lines: state.confirmedLines,
          )
        : await repository.confirmShipment(
            orderNumber: state.orderNumber.trim(),
            orderType: state.orderType.trim(),
            orderCompany: state.orderCompany.trim(),
          );

    result.when(
      (_) => state = state.copyWith(isConfirmingShipment: false, shipmentConfirmed: true),
      (failure) {
        state = state.copyWith(
          isConfirmingShipment: false,
          errorMessage: failure.messageOr('Confirmation failed. Please try again.'),
        );
      },
    );
  }

  void reset() => state = const OrderToBeShippedState();
}
