import 'package:flutter/material.dart';
import 'package:hacom_app_test/app/core/theme/app_colors.dart';
import 'package:hacom_app_test/app/core/theme/dark_colors.dart';
import 'package:hacom_app_test/app/core/theme/light_colors.dart';
import 'package:hacom_app_test/app/presentation/global/controllers/navigator_key/navigator_key_controller.dart';

class AppColorUtil extends AppColors {
  static final _currentContext = navigatorKeyGP
      .read()
      .state
      .navigatorKey!
      .currentContext;

  static final _isDarkMode =
      Theme.of(_currentContext!).brightness == Brightness.dark;

  final AppColors _colors = _isDarkMode ? DarkAppColors() : LightAppColors();

  @override
  Color get divider => _colors.divider;

  @override
  Color get error => _colors.error;

  @override
  Color get icon => _colors.icon;

  @override
  Color get onPrimary => _colors.onPrimary;

  @override
  Color get onSurface => _colors.onSurface;

  @override
  Color get onSurfaceDisabled => _colors.onSurfaceDisabled;

  @override
  Color get onSurfaceLight => _colors.onSurfaceLight;

  @override
  Color get primary => _colors.primary;

  @override
  Color get primaryDark => _colors.primaryDark;

  @override
  Color get primaryLight => _colors.primaryLight;

  @override
  Color get success => _colors.success;

  @override
  Color get surface => _colors.surface;

  @override
  Color get surfaceAlt => _colors.surfaceAlt;

  @override
  Color get surfaceCard => _colors.surfaceCard;

  @override
  Color get warning => _colors.warning;
}
