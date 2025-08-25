import 'dart:ui';

import 'app_colors.dart';
import 'hex_color.dart';

class LightAppColors implements AppColors {
  @override
  final Color primary = HexColor("#004D40"); // Verde oscuro

  @override
  final Color onPrimary = HexColor("#FFFFFF");

  @override
  final Color primaryLight = HexColor("#26A69A");

  @override
  final Color primaryDark = HexColor("#00362C");

  @override
  final Color surface = HexColor("#F0F0F0");

  @override
  final Color surfaceAlt = HexColor("#E0E0E0");

  @override
  final Color surfaceCard = HexColor("#FFFFFF");

  @override
  final Color onSurface = HexColor("#212121");

  @override
  final Color onSurfaceLight = HexColor("#757575");

  @override
  final Color onSurfaceDisabled = HexColor("#BDBDBD");

  @override
  final Color warning = HexColor("#FF3B00");

  @override
  final Color success = HexColor("#2196F3");

  @override
  final Color error = HexColor("#D32F2F");

  @override
  final Color icon = HexColor('#000000');

  @override
  final Color divider = HexColor("#CCCCCC");
}
