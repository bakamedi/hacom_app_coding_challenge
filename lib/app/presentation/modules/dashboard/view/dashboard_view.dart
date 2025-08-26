import 'package:flutter/material.dart';
import 'package:hacom_app_test/app/core/adaptive_screen/adaptive_screen.dart';
import 'package:hacom_app_test/app/presentation/global/utils/router_util.dart';
import 'package:hacom_app_test/app/presentation/global/widgets/background/background_scaffold_gw.dart';
import 'package:hacom_app_test/app/presentation/global/widgets/cards/card_item_gw.dart';
import 'package:hacom_app_test/app/presentation/modules/dashboard/utils/close_session.dart';
import 'package:hacom_app_test/app/presentation/router/app_routes/alerts_route.dart';
import 'package:hacom_app_test/app/presentation/router/app_routes/places_route.dart';
import 'package:hacom_app_test/app/presentation/router/app_routes/vehicles_route.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key, required this.adaptiveScreen});
  final AdaptiveScreen adaptiveScreen;

  @override
  Widget build(BuildContext context) {
    return BackgroundScaffoldGW(
      body: Stack(
        children: [
          AppBar(
            title: const Text('Supervisor de Flota - Livetrack'),
            centerTitle: false,
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.white,
          ),
          GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.only(
              top: adaptiveScreen.hpx(150),
              left: adaptiveScreen.wpx(20),
              right: adaptiveScreen.wpx(20),
            ),
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            children: [
              CardItemGW(
                onTap: () => RouterUtil.push(VehiclesRoute.path),
                adaptiveScreen: adaptiveScreen,
                title: "Supervisor",
                icon: Icons.local_shipping,
              ),
              CardItemGW(
                onTap: () => RouterUtil.push(AlertsRoute.path),
                adaptiveScreen: adaptiveScreen,
                title: "Notificaciones",
                icon: Icons.notifications,
              ),
              CardItemGW(
                onTap: () => RouterUtil.push(PlacesRoute.path),
                adaptiveScreen: adaptiveScreen,
                title: "Lugares",
                icon: Icons.location_city,
              ),
              CardItemGW(
                onTap: () => closeSession(),
                adaptiveScreen: adaptiveScreen,
                title: "Cerrar Sesión",
                icon: Icons.logout,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
