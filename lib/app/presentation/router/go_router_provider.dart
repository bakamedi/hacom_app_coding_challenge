import 'package:flutter_meedu/providers.dart';
import 'package:go_router/go_router.dart';
import 'package:hacom_app_test/app/presentation/global/controllers/navigator_key/navigator_key_controller.dart';
import 'package:hacom_app_test/app/presentation/global/controllers/session/session_gp.dart';
import 'package:hacom_app_test/app/presentation/router/app_routes/alerts_route.dart';
import 'package:hacom_app_test/app/presentation/router/app_routes/all_vehicles_route.dart';
import 'package:hacom_app_test/app/presentation/router/app_routes/dashboard_route.dart';
import 'package:hacom_app_test/app/presentation/router/app_routes/place_map_route.dart';
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
      AllVehiclesRoute.route,
      PlaceMapRoute.route,
    ],
    debugLogDiagnostics: true,
    redirect: (context, state) async {
      final sessionGC = sessionGP.read();

      final token = await sessionGC.getToken();

      final loggedIn = token.isNotEmpty;

      final loggingIn = state.fullPath == SignInRoute.path;

      // Si no está logeado y no está en /sign-in => lo mandamos a login
      if (!loggedIn && !loggingIn) {
        return SignInRoute.path;
      }

      // Si está logeado e intenta ir a /sign-in => lo mandamos al dashboard
      if (loggedIn && loggingIn) {
        return DashboardRoute.path;
      }

      // caso contrario: no redirigimos
      return null;
    },
  );
});
