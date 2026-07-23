import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'apps/delivery_note_print/delivery_note_print_app.dart';
import 'apps/grn_to_print/grn_to_print_app.dart';
import 'apps/invoice/invoice_app.dart';
import 'apps/location_availability_inquiry/location_availability_inquiry_app.dart';
import 'apps/order_to_be_picked/order_to_be_picked_app.dart';
import 'apps/order_to_be_shipped/order_to_be_shipped_app.dart';
import 'apps/po_to_receive/po_to_receive_app.dart';
import 'core/config/app_flavor.dart';
import 'core/config/app_flavor_provider.dart';

/// Root widget. Selects the correct app shell based on the active flavor.
class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFlavor = ref.watch(appFlavorProvider);

    return switch (activeFlavor) {
      AppFlavor.locationAvailabilityInquiry => const LocationAvailabilityInquiryApp(),
      AppFlavor.orderToBePicked => const OrderToBePickedApp(),
      AppFlavor.orderToBeShipped => const OrderToBeShippedApp(),
      AppFlavor.deliveryNotePrint => const DeliveryNotePrintApp(),
      AppFlavor.invoice => const InvoiceApp(),
      AppFlavor.poToReceive => const PoToReceiveApp(),
      AppFlavor.grnToPrint => const GrnToPrintApp(),
    };
  }
}
