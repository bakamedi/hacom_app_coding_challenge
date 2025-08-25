import 'package:flutter/material.dart';
import 'package:hacom_app_test/app/core/adaptive_screen/adaptive_screen.dart';
import 'package:hacom_app_test/app/core/utils/app_color_util.dart';

class ListItemGW extends StatelessWidget {
  const ListItemGW({
    super.key,
    required this.color,
    required this.name,
    required this.adaptiveScreen,
  });

  final AdaptiveScreen adaptiveScreen;
  final Color color;
  final String name;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name,
        style: TextStyle(
          fontSize: adaptiveScreen.sfp(17),
          color: AppColorUtil().onSurfaceLight,
        ),
      ),
      trailing: CircleAvatar(backgroundColor: color, radius: 10.0),
    );
  }
}
