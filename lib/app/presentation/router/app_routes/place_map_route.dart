import 'package:go_router/go_router.dart';
import 'package:hacom_app_test/app/core/adaptive_screen/adaptive_screen.dart';
import 'package:hacom_app_test/app/presentation/modules/place_map/view/place_map_view.dart';

class PlaceMapRoute {
  static const path = '/place-map';

  static GoRoute get route {
    return GoRoute(
      path: path,
      name: path,
      builder: (context, _) {
        final adaptiveScreen = AdaptiveScreen(context);

        return PlaceMapView(adaptiveScreen: adaptiveScreen);
      },
    );
  }
}
