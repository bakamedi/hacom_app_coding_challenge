import 'package:flutter_meedu/providers.dart';
import 'package:go_router/go_router.dart';
import 'package:hacom_app_test/app/presentation/global/controllers/navigator_key/navigator_key_controller.dart';
import 'app_routes/splash_route.dart';

final goRouterProvider = Provider((ref) {
  return GoRouter(
    navigatorKey: navigatorKeyGP.read().state.navigatorKey,
    initialLocation: SplashRoute.path,
    routes: [SplashRoute.route],
    debugLogDiagnostics: true,
  );
});
