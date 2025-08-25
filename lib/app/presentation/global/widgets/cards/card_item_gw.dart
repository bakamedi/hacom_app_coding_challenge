import 'package:flutter/material.dart';
import 'package:hacom_app_test/app/core/adaptive_screen/adaptive_screen.dart';
import 'package:hacom_app_test/app/core/utils/app_color_util.dart';
import 'package:hacom_app_test/app/presentation/global/extensions/widgets_ext.dart';

class CardItemGW extends StatelessWidget {
  const CardItemGW({
    super.key,
    required this.adaptiveScreen,
    required this.title,
    required this.icon,
    required this.onTap,
  });
  final AdaptiveScreen adaptiveScreen;
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: SizedBox(
          width: adaptiveScreen.wpx(120),
          height: adaptiveScreen.hpx(120),
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.white.withValues(alpha: 0.5)),
              gradient: LinearGradient(
                colors: [
                  AppColorUtil().primary.withValues(alpha: 0.8),
                  AppColorUtil().primary,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, size: adaptiveScreen.sfp(95), color: Colors.white),
                12.h,
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: adaptiveScreen.sfp(16),
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
