import 'package:flutter/material.dart';
import 'package:hacom_app_test/app/core/utils/app_color_util.dart';
import 'package:hacom_app_test/app/presentation/global/utils/ui_util.dart';

class BackgroundScaffoldGW extends StatelessWidget {
  const BackgroundScaffoldGW({super.key, required this.body, this.appBar});

  final PreferredSizeWidget? appBar;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => UIUtil.unFocusKeyboardIfNeeded(context),
      child: Scaffold(
        appBar: appBar,
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
      ),
    );
  }
}
