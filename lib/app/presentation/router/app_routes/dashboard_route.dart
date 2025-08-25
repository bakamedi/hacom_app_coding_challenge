import 'package:go_router/go_router.dart';
import 'package:hacom_app_test/app/core/adaptive_screen/adaptive_screen.dart';
import 'package:hacom_app_test/app/presentation/modules/dashboard/view/dashboard_view.dart';

class DashboardRoute {
  static const path = '/';

  static GoRoute get route {
    return GoRoute(
      path: path,
      name: path,
      builder: (context, __) {
        final adaptiveScreen = AdaptiveScreen(context);

        return DashboardView(adaptiveScreen: adaptiveScreen);
      },
    );
  }
}
