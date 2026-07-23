import 'package:multiple_result/multiple_result.dart';

import '../../../../../../core/exception/failure.dart';
import '../dto/item_availability_response.dart';

abstract class ItemAvailabilityRepository {
  Future<Result<ItemAvailabilityResponse, Failure>> getItemAvailability({
    required String businessUnit,
    required String location,
  });
}
