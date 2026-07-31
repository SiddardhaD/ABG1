import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/dto/order_to_be_shipped_line.dart';

part 'order_to_be_shipped_state.freezed.dart';

enum OrderToBeShippedStatus { idle, loading, success, error }

/// Immutable UI state for the Order to be Shipped confirmation screen.
@freezed
class OrderToBeShippedState with _$OrderToBeShippedState {
  const factory OrderToBeShippedState({
    // What the user enters/scans to look up an order — JDE's "pick number"
    // (JDE_ORCH_56_OrderToBeShipped's PickNumber /
    // JDE_ORCH_56_OrderShipmentConfirmation's Pick_Slip_Number), not the
    // order number. The actual order number comes back in confirmedLines
    // once fetched, and is what confirmShipmentWithUpdatedQuantities uses.
    @Default('') String pickNumber,
    @Default('') String orderType,
    @Default('') String orderCompany,
    @Default(OrderToBeShippedStatus.idle) OrderToBeShippedStatus status,
    @Default('') String errorMessage,
    @Default(<OrderToBeShippedLine>[]) List<OrderToBeShippedLine> confirmedLines,
    @Default(false) bool isConfirmingShipment,
    @Default(false) bool shipmentConfirmed,
    // True once any line's shipped quantity was edited away from what
    // JDE_ORCH_56_OrderToBeShipped originally returned. Determines whether
    // confirming calls the plain endpoint or the "UpdatedQua" one with the
    // full (edited + unedited) line list.
    @Default(false) bool hasEditedQuantities,
  }) = _OrderToBeShippedState;

  const OrderToBeShippedState._();

  bool get isLoading => status == OrderToBeShippedStatus.loading;

  /// Shipment can only be confirmed after the order's details were
  /// successfully fetched, and not while either call is in flight.
  bool get canConfirmShipment =>
      status == OrderToBeShippedStatus.success && !isConfirmingShipment && !shipmentConfirmed;

  bool get canSubmit =>
      pickNumber.trim().isNotEmpty &&
      orderType.trim().isNotEmpty &&
      orderCompany.trim().isNotEmpty &&
      !isLoading;
}
