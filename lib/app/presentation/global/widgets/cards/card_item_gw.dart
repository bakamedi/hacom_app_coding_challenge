import 'package:flutter/material.dart';
import 'package:hacom_app_test/app/core/adaptive_screen/adaptive_screen.dart';
import 'package:hacom_app_test/app/core/utils/app_color_util.dart';

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
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: SizedBox(
          width: 120,
          height: 120,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
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
                Icon(icon, size: adaptiveScreen.sfp(60), color: Colors.white),
                const SizedBox(height: 12),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
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
