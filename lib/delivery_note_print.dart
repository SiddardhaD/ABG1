import 'bootstrap.dart';
import 'core/config/app_flavor.dart';

Future<void> main() async {
  await bootstrapApp(AppFlavor.deliveryNotePrint);
}
