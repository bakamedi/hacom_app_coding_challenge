import 'package:go_router/go_router.dart';
import 'package:hacom_app_test/app/core/adaptive_screen/adaptive_screen.dart';
import 'package:hacom_app_test/app/presentation/modules/all_vehicles/view/all_vehicles_view.dart';

class AllVehiclesRoute {
  static const path = '/all-vehicle';

  static GoRoute get route {
    return GoRoute(
      path: path,
      name: path,
      builder: (context, _) {
        final adaptiveScreen = AdaptiveScreen(context);

        return AllVehiclesView(adaptiveScreen: adaptiveScreen);
      },
    );
  }
}
