import 'dart:math' as math;
import 'package:flutter/material.dart';

class AdaptiveScreen {
  AdaptiveScreen(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final size = mediaQueryData.size;

    width = size.width;
    height = size.height;
    blockSizeHorizontal = width / 100;
    blockSizeVertical = height / 100;
    diagonal = math.sqrt(math.pow(width, 2) + math.pow(height, 2));

    final safeAreaHorizontal =
        mediaQueryData.padding.left + mediaQueryData.padding.right;
    final safeAreaVertical =
        mediaQueryData.padding.top + mediaQueryData.padding.bottom;
    safeBlockHorizontal = (width - safeAreaHorizontal) / 100;
    safeBlockVertical = (height - safeAreaVertical) / 100;
  }
  late final double width;
  late final double height;
  late final double diagonal;
  late final double blockSizeHorizontal;
  late final double blockSizeVertical;
  late final double safeBlockHorizontal;
  late final double safeBlockVertical;

  static AdaptiveScreen of(BuildContext context) => AdaptiveScreen(context);
  // Pixel-based responsive functions
  double wpx(double pixels) =>
      pixels *
      width /
      402; // Base width 402px (Dispositivo de ejemplo en figma)
  double hpx(double pixels) =>
      pixels *
      height /
      874; // Base height 874px (Dispositivo de ejemplo en figma)
  double dpx(double pixels) =>
      pixels *
      diagonal /
      math.sqrt(math.pow(402, 2) + math.pow(874, 2)); // Base diagonal

  // Font-specific responsive function with conservative scaling
  double sfp(double fontSize) {
    final scaleFactor = math.min(width / 402, height / 874);
    return fontSize * scaleFactor.clamp(0.8, 1.2); // Limita entre 80% y 120%
  }
}
