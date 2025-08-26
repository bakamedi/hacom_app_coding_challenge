import 'package:flutter_meedu/providers.dart';
import 'package:go_router/go_router.dart';
import 'package:hacom_app_test/app/presentation/global/controllers/navigator_key/navigator_key_controller.dart';
import 'package:hacom_app_test/app/presentation/router/app_routes/alerts_route.dart';
import 'package:hacom_app_test/app/presentation/router/app_routes/dashboard_route.dart';
import 'package:hacom_app_test/app/presentation/router/app_routes/places_route.dart';
import 'package:hacom_app_test/app/presentation/router/app_routes/sign_in_route.dart';
import 'package:hacom_app_test/app/presentation/router/app_routes/vehicles_route.dart';
import 'app_routes/splash_route.dart';

final goRouterProvider = Provider((ref) {
  return GoRouter(
    navigatorKey: navigatorKeyGP.read().state.navigatorKey,
    initialLocation: SignInRoute.path,
    routes: [
      SplashRoute.route,
      SignInRoute.route,
      DashboardRoute.route,
      VehiclesRoute.route,
      AlertsRoute.route,
      PlacesRoute.route,
    ],
    debugLogDiagnostics: true,
  );
});
