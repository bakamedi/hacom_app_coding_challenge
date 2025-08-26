import 'package:flutter/material.dart';
import 'package:hacom_app_test/app/core/adaptive_screen/adaptive_screen.dart';
import 'package:hacom_app_test/app/core/utils/app_color_util.dart';

class ListItemPlaceGW extends StatelessWidget {
  const ListItemPlaceGW({
    super.key,
    required this.adaptiveScreen,
    required this.name,
  });

  final AdaptiveScreen adaptiveScreen;
  final String name;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFF8F8F8), Color(0xFFE0E0E0)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(
          vertical: adaptiveScreen.hpx(10),
          horizontal: adaptiveScreen.wpx(10),
        ),
        leading: SizedBox(
          height: adaptiveScreen.hpx(50),
          width: adaptiveScreen.wpx(50),
          child: Material(
            elevation: 2,
            borderRadius: BorderRadius.circular(10),
            color: AppColorUtil().onPrimary,
            child: Icon(Icons.star_outlined, size: 40, color: Colors.amber),
          ),
        ),
        title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
