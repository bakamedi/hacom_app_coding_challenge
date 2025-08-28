import 'package:flutter/material.dart';
import 'package:hacom_app_test/app/presentation/global/controllers/navigator_key/navigator_key_controller.dart';
import 'package:hacom_app_test/app/presentation/global/extensions/widgets_ext.dart';
import 'package:toastification/toastification.dart';

enum ToastType { info, success, error }

abstract class ToastUtil {
  ToastUtil._();

  static final _navigatorKeyState = navigatorKeyGP.read();

  /// Muestra un toast simple con opción de botón
  static void show({
    required String message,
    ToastType type = ToastType.info,
    IconData? iconData,
    bool withButton = false,
    void Function()? onPressed,
    BuildContext? context,
  }) {
    final ctx =
        _navigatorKeyState.state.navigatorKey!.currentContext ?? context;
    if (ctx == null) return;

    toastification.show(
      context: ctx,
      autoCloseDuration: const Duration(seconds: 3),
      animationDuration: const Duration(milliseconds: 400),
      alignment: Alignment.bottomCenter,
      dismissDirection: DismissDirection.down,
      style: ToastificationStyle.fillColored,
      padding: EdgeInsets.zero,
      backgroundColor: Colors.white,
      primaryColor: Colors.white,
      title: Row(
        spacing: 8,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.done, color: Colors.black),
          Text(message, style: TextStyle(color: Colors.black)),
        ],
      ),
      description: withButton
          ? Material(
              color: Colors.transparent,
              child: InkWell(onTap: onPressed, child: Text('Aceptar')),
            ).center()
          : null,
      showIcon: false,
      closeButton: const ToastCloseButton(showType: CloseButtonShowType.none),
    );
  }
}
