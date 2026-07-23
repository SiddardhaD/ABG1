/// Defines which app entry should be launched from the shared codebase.
enum AppFlavor {
  locationAvailabilityInquiry,
  orderToBePicked,
  orderToBeShipped,
  deliveryNotePrint,
  invoice,
  poToReceive,
  grnToPrint,
}

extension AppFlavorX on AppFlavor {
  /// Matches the Android product flavor / iOS scheme name for this app.
  String get id {
    switch (this) {
      case AppFlavor.locationAvailabilityInquiry:
        return 'locationAvailabilityInquiry';
      case AppFlavor.orderToBePicked:
        return 'orderToBePicked';
      case AppFlavor.orderToBeShipped:
        return 'orderToBeShipped';
      case AppFlavor.deliveryNotePrint:
        return 'deliveryNotePrint';
      case AppFlavor.invoice:
        return 'invoice';
      case AppFlavor.poToReceive:
        return 'poToReceive';
      case AppFlavor.grnToPrint:
        return 'grnToPrint';
    }
  }

  String get displayName {
    switch (this) {
      case AppFlavor.locationAvailabilityInquiry:
        return 'Location Availability Inquiry';
      case AppFlavor.orderToBePicked:
        return 'Order to be Picked';
      case AppFlavor.orderToBeShipped:
        return 'Order to be Shipped';
      case AppFlavor.deliveryNotePrint:
        return 'Delivery Note Print';
      case AppFlavor.invoice:
        return 'Invoice';
      case AppFlavor.poToReceive:
        return 'PO to Receive';
      case AppFlavor.grnToPrint:
        return 'GRN to Print';
    }
  }
}

class AppFlavorConfig {
  const AppFlavorConfig._();

  static AppFlavor fromEnvironment(String? value) {
    for (final flavor in AppFlavor.values) {
      if (flavor.id.toLowerCase() == value?.toLowerCase()) {
        return flavor;
      }
    }
    return AppFlavor.locationAvailabilityInquiry;
  }
}
