import 'package:go_router/go_router.dart';
import 'package:hacom_app_test/app/core/adaptive_screen/adaptive_screen.dart';
import 'package:hacom_app_test/app/presentation/modules/splash/view/splash_view.dart';

class SplashRoute {
  static const path = '/splash';

  static GoRoute get route {
    return GoRoute(
      path: path,
      name: path,
      builder: (context, _) {
        final AdaptiveScreen adaptiveScreen = AdaptiveScreen(context);
        return SplashView(adaptiveScreen: adaptiveScreen);
      },
    );
  }
}
