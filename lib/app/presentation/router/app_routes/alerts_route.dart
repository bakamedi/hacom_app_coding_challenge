import 'package:go_router/go_router.dart';
import 'package:hacom_app_test/app/core/adaptive_screen/adaptive_screen.dart';
import 'package:hacom_app_test/app/presentation/modules/alerts/view/alerts_view.dart';

class AlertsRoute {
  static const path = '/alerts';

  static GoRoute get route {
    return GoRoute(
      path: path,
      name: path,
      builder: (context, _) {
        final adaptiveScreen = AdaptiveScreen(context);

        return AlertsView(adaptiveScreen: adaptiveScreen);
      },
    );
  }
}
