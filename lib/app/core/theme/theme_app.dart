import 'package:flutter/material.dart';
import '../utils/app_fonts_util.dart';
import 'button_theme.dart';
import 'checkbox_theme.dart';
import 'dark_colors.dart';
import 'light_colors.dart';

class ThemeApp {
  // Singleton
  factory ThemeApp() => _instance;
  ThemeApp._();
  static final ThemeApp _instance = ThemeApp._();

  /// Accede al tema oscuro personalizado
  static ThemeData get darkTheme => ThemeData(
    fontFamily: AppFonstUtil.sen,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: DarkColors().primary,
    primaryColor: DarkColors().primary,
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: DarkColors().primary,
      onPrimary: DarkColors().white,
      secondary: DarkColors().brandPurple,
      onSecondary: DarkColors().white,
      surface: DarkColors().inputBackground,
      onSurface: DarkColors().body,
      error: DarkColors().errText,
      onError: DarkColors().white,
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: DarkColors().borderPurple,
      selectionColor: DarkColors().inputBackground,
    ),
    checkboxTheme: CheckboxThemeApp.checkboxThemeData(
      color: DarkColors().brandPurple,
    ),
    cardColor: DarkColors().white,
    elevatedButtonTheme: ButtonThemeApp.elevatedButtonThemeData(DarkColors()),
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: DarkColors().primary,
      foregroundColor: DarkColors().textTitle,
    ),
    textTheme: const TextTheme(),
  );

  static ThemeData get lightTheme => ThemeData(
    fontFamily: AppFonstUtil.sen,
    brightness: Brightness.light,
    scaffoldBackgroundColor: LightColors().white,
    primaryColor: LightColors().primary,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: LightColors().primary,
      onPrimary: LightColors().white,
      secondary: LightColors().brandPurple,
      onSecondary: LightColors().white,
      surface: LightColors().inputBackground,
      onSurface: LightColors().body,
      error: LightColors().errText,
      onError: LightColors().white,
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: LightColors().borderPurple,
      selectionColor: LightColors().inputBackground,
    ),
    checkboxTheme: CheckboxThemeApp.checkboxThemeData(
      color: LightColors().brandPurple,
    ),
    cardColor: LightColors().white,
    elevatedButtonTheme: ButtonThemeApp.elevatedButtonThemeData(LightColors()),
    appBarTheme: const AppBarTheme(elevation: 0),
    textTheme: const TextTheme(),
  );
}
