import 'package:flutter/material.dart';
import 'package:hacom_app_test/app/core/adaptive_screen/adaptive_screen.dart';
import 'package:hacom_app_test/app/presentation/global/utils/router_util.dart';
import 'package:hacom_app_test/app/presentation/global/widgets/background/background_scaffold_gw.dart';
import 'package:hacom_app_test/app/presentation/global/widgets/cards/card_item_gw.dart';
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
                adaptiveScreen: adaptiveScreen,
                title: "Supervisor",
                icon: Icons.local_shipping,
                onTap: () => RouterUtil.push(VehiclesRoute.path),
              ),
              CardItemGW(
                adaptiveScreen: adaptiveScreen,
                title: "Notificaciones",
                icon: Icons.notifications,
                onTap: () {},
              ),
              CardItemGW(
                adaptiveScreen: adaptiveScreen,
                title: "Lugares",
                icon: Icons.location_city,
                onTap: () {},
              ),
              CardItemGW(
                adaptiveScreen: adaptiveScreen,
                title: "Cerrar Sesión",
                icon: Icons.logout,
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
