import 'package:go_router/go_router.dart';
import 'package:hacom_app_test/app/core/adaptive_screen/adaptive_screen.dart';
import 'package:hacom_app_test/app/presentation/modules/vehicles/view/vehicles_view.dart';

class VehiclesRoute {
  static const path = '/vehicles';

  static GoRoute get route {
    return GoRoute(
      path: path,
      name: path,
      builder: (context, _) {
        final AdaptiveScreen adaptiveScreen = AdaptiveScreen(context);

        return VehiclesView(adaptiveScreen: adaptiveScreen);
      },
    );
  }
}
