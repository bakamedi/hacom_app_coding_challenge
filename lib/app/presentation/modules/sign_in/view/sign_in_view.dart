import 'package:flutter/material.dart';
import 'package:hacom_app_test/app/core/adaptive_screen/adaptive_screen.dart';
import 'package:hacom_app_test/app/core/utils/assets_constant.dart';
import 'package:hacom_app_test/app/presentation/global/extensions/widgets_ext.dart';
import 'package:hacom_app_test/app/presentation/global/widgets/background/backgorund_scaffold_gw.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key, required this.adaptiveScreen});

  final AdaptiveScreen adaptiveScreen;

  @override
  Widget build(BuildContext context) {
    return BackgorundScaffoldGW(
      body: Stack(
        children: [
          Image.asset(AssetsConstant.logo).padding(
            EdgeInsets.only(
              top: adaptiveScreen.hpx(120),
              left: adaptiveScreen.wpx(40),
              right: adaptiveScreen.wpx(40),
            ),
          ),
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
              TextFormField(),
              10.h,
              ElevatedButton(
                onPressed: () {},
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
