import 'package:flutter/material.dart';
import 'package:hacom_app_test/app/core/utils/app_color_util.dart';

class BackgorundScaffoldGW extends StatelessWidget {
  const BackgorundScaffoldGW({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AppColorUtil().primary, AppColorUtil().primaryLight],
          ),
        ),
        child: body,
      ),
    );
  }
}
