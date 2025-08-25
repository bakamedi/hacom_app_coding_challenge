import 'package:flutter/material.dart';
import 'package:hacom_app_test/app/core/theme/app_colors.dart';
import 'package:hacom_app_test/app/core/theme/light_colors.dart';
import '../utils/app_fonts_util.dart';
import 'button_theme.dart';

class ThemeApp {
  // Singleton
  factory ThemeApp() => _instance;
  ThemeApp._();
  static final ThemeApp _instance = ThemeApp._();

  static final AppColors _lightColors = LightAppColors();
  static ThemeData get lightTheme => ThemeData(
    fontFamily: AppFonstUtil.sen,
    brightness: Brightness.light,
    scaffoldBackgroundColor: _lightColors.surface,
    primaryColor: _lightColors.primary,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: _lightColors.primary,
      onPrimary: _lightColors.onPrimary,
      secondary: _lightColors.primaryLight, // o usa brandPurple si lo tienes
      onSecondary: _lightColors.onPrimary,
      surface: _lightColors.surfaceCard,
      onSurface: _lightColors.onSurface,
      error: _lightColors.error,
      onError: _lightColors.onPrimary,
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: _lightColors.primary,
      selectionColor: _lightColors.surfaceAlt,
    ),
    cardColor: _lightColors.surfaceCard,
    elevatedButtonTheme: ButtonThemeApp.elevatedButtonThemeData(_lightColors),
    appBarTheme: const AppBarTheme(elevation: 0),
  );
}
