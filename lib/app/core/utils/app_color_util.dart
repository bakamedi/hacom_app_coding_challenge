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

  final AppColors _colors = _isDarkMode ? DarkColors() : LightColors();

  @override
  Color get blueSurface => _colors.blueSurface;

  @override
  Color get body => _colors.body;

  @override
  Color get borderGreen => _colors.borderGreen;

  @override
  Color get borderPurple => _colors.borderPurple;

  @override
  Color get brandBlue => _colors.brandBlue;

  @override
  Color get brandGrey => _colors.brandGrey;

  @override
  Color get brandPurple => _colors.brandPurple;

  @override
  Color get disabled => _colors.disabled;

  @override
  Color get dot => _colors.dot;

  @override
  Color get errBackground => _colors.errBackground;

  @override
  Color get errText => _colors.errText;

  @override
  Color get focus => _colors.focus;

  @override
  Color get greenBackground => _colors.greenBackground;

  @override
  Color get greenIcon => _colors.greenIcon;

  @override
  Color get iconBlue => _colors.iconBlue;

  @override
  Color get iconPurple => _colors.iconPurple;

  @override
  Color get iconSuccessStrong => _colors.iconSuccessStrong;

  @override
  Color get inputBackground => _colors.inputBackground;

  @override
  Color get inputText => _colors.inputText;

  @override
  Color get line => _colors.line;

  @override
  Color get primary => _colors.primary;

  @override
  Color get successIcon => _colors.successIcon;

  @override
  Color get textContent => _colors.textContent;

  @override
  Color get textLabel => _colors.textLabel;

  @override
  Color get textRegular => _colors.textRegular;

  @override
  Color get textTitle => _colors.textTitle;

  @override
  Color get warning => _colors.warning;

  @override
  Color get white => _colors.white;
}
