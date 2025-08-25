import 'dart:io';

import 'package:flutter/material.dart';

abstract class UIUtil {
  UIUtil._();

  static void unFocusKeyboardIfNeeded(BuildContext context) {
    if (MediaQuery.of(context).viewInsets.bottom > 0) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }

  static const Widget emptyWidget = SizedBox.shrink();

  static bool isAndroid = Platform.isAndroid;
}
