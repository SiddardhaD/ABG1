import 'bootstrap.dart';
import 'core/config/app_flavor.dart';

Future<void> main() async {
  await bootstrapApp(
    AppFlavorConfig.fromEnvironment(
      const String.fromEnvironment('APP_FLAVOR', defaultValue: 'locationAvailabilityInquiry'),
    ),
  );
}
