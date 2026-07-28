import 'package:multiple_result/multiple_result.dart';

import '../../../../../../core/exception/failure.dart';
import '../dto/order_to_be_shipped_response.dart';

abstract class OrderToBeShippedRepository {
  Future<Result<OrderToBeShippedResponse, Failure>> confirmOrderToBeShipped({
    required String orderNumber,
    required String orderType,
    required String orderCompany,
  });
}
