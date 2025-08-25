import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hacom_app_test/app/core/adaptive_screen/adaptive_screen.dart';
import 'package:hacom_app_test/app/presentation/global/extensions/widgets_ext.dart';

class CircularLoadingGW extends StatelessWidget {
  const CircularLoadingGW({super.key, this.color});
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final AdaptiveScreen adaptiveScreen = AdaptiveScreen(context);

    if (Platform.isAndroid) {
      return CircularProgressIndicator(color: color).center();
    } else {
      return CupertinoActivityIndicator(
        radius: adaptiveScreen.sfp(2.2),
        color: color ?? Colors.white,
      ).center();
    }
  }
}
