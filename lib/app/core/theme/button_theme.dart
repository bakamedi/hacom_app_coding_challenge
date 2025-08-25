import 'package:flutter/material.dart';

import '../utils/app_fonts_util.dart';
import 'app_colors.dart';

class ButtonThemeApp {
  static ElevatedButtonThemeData elevatedButtonThemeData(AppColors appColor) {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        minimumSize: WidgetStateProperty.all<Size>(
          const Size(double.infinity, 50),
        ),
        backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
          if (states.contains(WidgetState.disabled)) {
            return appColor.primary.withValues(alpha: 0.4);
          }
          return appColor.primaryDark;
        }),
        foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
        overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
          if (states.contains(WidgetState.focused) ||
              states.contains(WidgetState.pressed)) {
            return Colors.white.withValues(alpha: 0.1);
          }
          return null;
        }),
        padding: WidgetStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(horizontal: 14),
        ),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        textStyle: WidgetStateProperty.resolveWith<TextStyle>((
          Set<WidgetState> states,
        ) {
          return TextStyle(
            color: Colors.white,
            fontFamily: AppFonstUtil.sen,
            fontWeight: FontWeight.w500,
          );
        }),
      ),
    );
  }
}
