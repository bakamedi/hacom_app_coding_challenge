import 'package:go_router/go_router.dart';
import 'package:hacom_app_test/app/core/adaptive_screen/adaptive_screen.dart';
import 'package:hacom_app_test/app/presentation/modules/places/view/places_view.dart';

class PlacesRoute {
  static const path = '/places';

  static GoRoute get route {
    return GoRoute(
      path: path,
      name: path,
      builder: (context, _) {
        final adaptiveScreen = AdaptiveScreen(context);

        return PlacesView(adaptiveScreen: adaptiveScreen);
      },
    );
  }
}
