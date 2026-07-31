import 'package:multiple_result/multiple_result.dart';

import '../../../../../../core/exception/failure.dart';
import '../dto/order_to_be_shipped_line.dart';
import '../dto/order_to_be_shipped_response.dart';

abstract class OrderToBeShippedRepository {
  /// Fetches the order's shipment line details (`JDE_ORCH_56_OrderToBeShipped`)
  /// — read-only, doesn't change the order's status. Looked up by
  /// [pickNumber] (not the order number — the response still contains that).
  Future<Result<OrderToBeShippedResponse, Failure>> confirmOrderToBeShipped({
    required String pickNumber,
    required String orderType,
    required String orderCompany,
  });

  /// Confirms the shipment with no quantity changes
  /// (`JDE_ORCH_56_OrderShipmentConfirmation`). Success is judged by HTTP
  /// 200, per spec. Looked up by [pickSlipNumber] — same underlying value
  /// as [confirmOrderToBeShipped]'s `pickNumber`, JDE just names the field
  /// differently on this endpoint.
  Future<Result<void, Failure>> confirmShipment({
    required String pickSlipNumber,
    required String orderType,
    required String orderCompany,
  });

  /// Confirms the shipment when the user edited one or more lines' shipped
  /// quantity (`JDE_ORCH_56_OrderShipmentConfirmationUpdatedQua`) — [lines]
  /// must include every line, edited or not. Success is judged by HTTP 200.
  Future<Result<void, Failure>> confirmShipmentWithUpdatedQuantities({
    required String orderNumber,
    required String orderType,
    required String orderCompany,
    required List<OrderToBeShippedLine> lines,
  });
}
