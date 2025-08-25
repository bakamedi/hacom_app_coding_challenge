import 'package:flutter/material.dart';
import 'package:hacom_app_test/app/core/utils/app_color_util.dart';

class InputThemeApp {
  static InputDecorationTheme inputDecorationTheme({
    required Color primaryColor,
    required Color secondaryColor,
  }) {
    return InputDecorationTheme(
      filled: true,
      fillColor: AppColorUtil().inputBackground,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: primaryColor, width: 1.4),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
      hintStyle: TextStyle(color: secondaryColor, fontWeight: FontWeight.w500),
      focusColor: primaryColor,
      prefixIconColor: secondaryColor,
      suffixIconColor: secondaryColor,
      isDense: true,
    );
  }
}
