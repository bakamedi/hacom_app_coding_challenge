import 'package:flutter/material.dart';

abstract class CheckboxThemeApp {
  CheckboxThemeApp._();

  static CheckboxThemeData checkboxThemeData({required Color color}) {
    return CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith<Color?>((
        Set<WidgetState> states,
      ) {
        if (states.contains(WidgetState.selected)) {
          return color; // color cuando está seleccionado
        }
        return Colors.transparent; // color cuando NO está seleccionado
      }),
      checkColor: WidgetStateProperty.all(color),
      side: BorderSide(color: color),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
    );
  }
}
