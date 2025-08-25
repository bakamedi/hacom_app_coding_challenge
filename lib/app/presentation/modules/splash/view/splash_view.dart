import 'package:flutter/material.dart';
import 'package:hacom_app_test/app/core/adaptive_screen/adaptive_screen.dart';
import 'package:hacom_app_test/app/presentation/global/widgets/progress/progress_gw.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key, required this.adaptiveScreen});

  final AdaptiveScreen adaptiveScreen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: adaptiveScreen.hp(20)),
        child: const CircularLoadingGW(),
      ),
    );
  }
}
