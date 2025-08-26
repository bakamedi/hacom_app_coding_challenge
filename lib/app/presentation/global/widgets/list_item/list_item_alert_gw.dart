import 'package:flutter/material.dart';
import 'package:hacom_app_test/app/core/adaptive_screen/adaptive_screen.dart';
import 'package:hacom_app_test/app/core/utils/app_color_util.dart';
import 'package:hacom_app_test/app/presentation/global/extensions/widgets_ext.dart';

class ListItemAlertGW extends StatelessWidget {
  const ListItemAlertGW({
    super.key,
    required this.adaptiveScreen,
    required this.name,
    required this.count,
  });
  final AdaptiveScreen adaptiveScreen;
  final String name;
  final int count;

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
        contentPadding: EdgeInsets.zero,
        leading: SizedBox(
          height: adaptiveScreen.hpx(80),
          width: adaptiveScreen.wpx(80),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.directions_car,
              size: 40,
              color: AppColorUtil().onPrimary,
            ),
          ),
        ),
        title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text("Contador de alertas"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.warning_amber_rounded,
                  color: Colors.red,
                  size: adaptiveScreen.sfp(25),
                ),
                Text(
                  "$count",
                  style: TextStyle(
                    fontSize: adaptiveScreen.sfp(14),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.warning_amber_rounded,
                  color: Colors.red,
                  size: adaptiveScreen.sfp(25),
                ).padding(EdgeInsets.only(right: adaptiveScreen.wpx(100))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
