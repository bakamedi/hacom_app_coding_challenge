import 'package:flutter/material.dart';

import '../utils/app_fonts_util.dart';
import 'app_colors.dart';

class ButtonThemeApp {
  static OutlinedButtonThemeData outlinedButtonThemeData(AppColors appColor) {
    return OutlinedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(
          appColor.greenIcon.withValues(alpha: 0.1),
        ),
        foregroundColor: WidgetStateProperty.all<Color>(appColor.primary),
        overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
          if (states.contains(WidgetState.pressed)) {
            return appColor.primary.withValues(alpha: 0.2);
          }
          return null;
        }),
        padding: WidgetStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        ),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
            side: BorderSide(color: Colors.transparent),
          ),
        ),
        side: WidgetStateProperty.all<BorderSide>(BorderSide.none),
        textStyle: WidgetStateProperty.all<TextStyle>(
          const TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

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
          return appColor.primary;
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
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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

  static TextButtonThemeData textButtonThemeData(AppColors appColor) {
    return TextButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
        foregroundColor: WidgetStateProperty.all<Color>(appColor.white),
        overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
          if (states.contains(WidgetState.pressed)) {
            return appColor.primary.withValues(alpha: 0.1);
          }
          return null;
        }),
        padding: WidgetStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        ),
      ),
    );
  }
}
