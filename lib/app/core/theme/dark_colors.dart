import 'dart:ui';

import 'app_colors.dart';
import 'hex_color.dart';

class DarkAppColors implements AppColors {
  @override
  Color get primary => HexColor("#00695C"); // Verde oscuro más brillante para destacar

  @override
  Color get onPrimary => HexColor("#FFFFFF"); // Blanco sobre primario

  @override
  Color get primaryLight => HexColor("#339688"); // Versión clara del primario

  @override
  Color get primaryDark => HexColor("#003C33"); // Aún más oscuro para sombras

  @override
  Color get surface => HexColor("#121212"); // Fondo principal oscuro (Material Design)

  @override
  Color get surfaceAlt => HexColor("#1E1E1E"); // Fondo alternativo (filas)

  @override
  Color get surfaceCard => HexColor("#2A2A2A"); // Tarjetas o modales

  @override
  Color get onSurface => HexColor("#E0E0E0"); // Texto principal (gris claro)

  @override
  Color get onSurfaceLight => HexColor("#9E9E9E"); // Texto secundario

  @override
  Color get onSurfaceDisabled => HexColor("#616161"); // Texto deshabilitado

  @override
  Color get warning => HexColor("#FF3B00"); // Naranja rojizo (mismo que en modo claro, visible)

  @override
  Color get success => HexColor("#4CAF50"); // Verde claro para éxito (mejor contraste en oscuro)

  @override
  Color get error => HexColor("#CF6679"); // Rojo claro (Material Design error en oscuro)

  @override
  Color get icon => HexColor("#EEEEEE"); // Iconos casi blancos

  @override
  Color get divider => HexColor("#383838"); // Línea divisoria sutil
}
