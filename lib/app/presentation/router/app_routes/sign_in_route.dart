import 'package:go_router/go_router.dart';
import 'package:hacom_app_test/app/core/adaptive_screen/adaptive_screen.dart';
import 'package:hacom_app_test/app/presentation/modules/sign_in/view/sign_in_view.dart';

class SignInRoute {
  static const path = '/sign-in';

  static GoRoute get route {
    return GoRoute(
      path: path,
      name: path,
      builder: (context, _) {
        final AdaptiveScreen adaptiveScreen = AdaptiveScreen(context);
        return SignInView(adaptiveScreen: adaptiveScreen);
      },
    );
  }
}
