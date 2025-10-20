import 'package:fleetride/flavor.dart';
import 'package:fleetride/fleetride_app.dart';

void main() {
  FlavorConfig.appFlavor = Flavor.dev;
  FleetrideApp.boot();
}