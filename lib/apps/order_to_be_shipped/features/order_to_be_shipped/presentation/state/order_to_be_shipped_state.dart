import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/dto/order_to_be_shipped_line.dart';

part 'order_to_be_shipped_state.freezed.dart';

enum OrderToBeShippedStatus { idle, loading, success, error }

/// Immutable UI state for the Order to be Shipped confirmation screen.
@freezed
class OrderToBeShippedState with _$OrderToBeShippedState {
  const factory OrderToBeShippedState({
    @Default('') String orderNumber,
    @Default('') String orderType,
    @Default('') String orderCompany,
    @Default(OrderToBeShippedStatus.idle) OrderToBeShippedStatus status,
    @Default('') String errorMessage,
    @Default(<OrderToBeShippedLine>[]) List<OrderToBeShippedLine> confirmedLines,
  }) = _OrderToBeShippedState;

  const OrderToBeShippedState._();

  bool get isLoading => status == OrderToBeShippedStatus.loading;

  bool get canSubmit =>
      orderNumber.trim().isNotEmpty &&
      orderType.trim().isNotEmpty &&
      orderCompany.trim().isNotEmpty &&
      !isLoading;
}
