import 'package:flutter/material.dart';
import 'package:hacom_app_test/app/core/adaptive_screen/adaptive_screen.dart';
import 'package:hacom_app_test/app/core/utils/assets_constant.dart';
import 'package:hacom_app_test/app/presentation/global/extensions/widgets_ext.dart';
import 'package:hacom_app_test/app/presentation/global/utils/router_util.dart';
import 'package:hacom_app_test/app/presentation/global/widgets/background/background_scaffold_gw.dart';
import 'package:hacom_app_test/app/presentation/router/app_routes/dashboard_route.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key, required this.adaptiveScreen});

  final AdaptiveScreen adaptiveScreen;

  @override
  Widget build(BuildContext context) {
    return BackgroundScaffoldGW(
      body: Stack(
        children: [
          Image.asset(AssetsConstant.logo).padding(
            EdgeInsets.only(
              top: adaptiveScreen.hpx(120),
              left: adaptiveScreen.wpx(40),
              right: adaptiveScreen.wpx(40),
            ),
          ),
          AppBar(
            title: Text(
              'Supervisor de flota - Livetrack',
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: false,
            backgroundColor: Colors.transparent,
          ).padding(EdgeInsets.symmetric(horizontal: adaptiveScreen.hpx(20))),
          Column(
            spacing: adaptiveScreen.hpx(8),
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Ingrese el nombre de su cuenta',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: adaptiveScreen.sfp(16),
                ),
              ),
              TextFormField(),
              Text(
                'Ingrese el número de teléfonico',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: adaptiveScreen.sfp(16),
                ),
              ),
              TextFormField(keyboardType: TextInputType.number),
              10.h,
              ElevatedButton(
                onPressed: () => RouterUtil.push(DashboardRoute.path),
                child: Text(
                  'Ingresar',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: adaptiveScreen.sfp(16),
                  ),
                ),
              ),
            ],
          ).padding(EdgeInsets.symmetric(horizontal: adaptiveScreen.hpx(40))),
        ],
      ),
    );
  }
}
