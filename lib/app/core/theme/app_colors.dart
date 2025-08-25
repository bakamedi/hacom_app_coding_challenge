// archivo: lib/theme/app_colors.dart

import 'package:flutter/material.dart';

/// Interfaz abstracta para definir los colores de la aplicación.
/// Permite implementar diferentes temas (ej. claro, oscuro, personalizado).
abstract class AppColors {
  Color get primary;
  Color get onPrimary;

  Color get primaryLight;
  Color get primaryDark;

  Color get surface;
  Color get surfaceAlt;
  Color get surfaceCard;

  Color get onSurface;
  Color get onSurfaceLight;
  Color get onSurfaceDisabled;

  Color get warning;
  Color get success;
  Color get error;

  Color get icon;
  Color get divider;
}
