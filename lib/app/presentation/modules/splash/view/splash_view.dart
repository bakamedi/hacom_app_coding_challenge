import 'package:flutter/material.dart';
import 'package:hacom_app_test/app/core/adaptive_screen/adaptive_screen.dart';
import 'package:hacom_app_test/app/presentation/global/extensions/widgets_ext.dart';
import 'package:hacom_app_test/app/presentation/global/widgets/background/background_scaffold_gw.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key, required this.adaptiveScreen});

  final AdaptiveScreen adaptiveScreen;

  @override
  Widget build(BuildContext context) {
    return BackgroundScaffoldGW(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(),
          ElevatedButton(
            onPressed: () {},
            child: Text('Ingresar'),
          ).padding(EdgeInsets.symmetric(horizontal: 20)),
        ],
      ),
    );
  }
}
