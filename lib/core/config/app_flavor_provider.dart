import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_flavor.dart';

final appFlavorProvider = Provider<AppFlavor>((ref) {
  return AppFlavor.locationAvailabilityInquiry;
});
