import 'package:flutter/material.dart';
import 'package:hacom_app_test/app/presentation/global/controllers/navigator_key/navigator_key_controller.dart';

import 'router_util.dart';

/// Tipos de dialogos
enum DialogType { success, error, info, custom, none, internet }

/// clase [Dialogs] para los dialogos personalizados
abstract class DialogsUtil {
  static final _navigatorKeyState = navigatorKeyGP.read();

  /// Dialogo Simple que aparece con una sola opcion que desaparece
  static void show({required IconData iconData, required String message}) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final context = _navigatorKeyState.state.navigatorKey!.currentContext;
      if (context == null) return;
      showDialog<void>(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Row(
              children: [
                Icon(iconData, color: Colors.red),
                const SizedBox(width: 8),
                const Text('Error'),
              ],
            ),
            content: Text(message),
            actions: [
              TextButton(
                onPressed: () => RouterUtil.pop(),
                child: const Text('Cerrar'),
              ),
            ],
          );
        },
      );
    });
  }

  static void simple({
    required String title,
    required String message,
    required VoidCallback onConfirm,
  }) {
    final context = _navigatorKeyState.state.navigatorKey!.currentContext;
    if (context == null) return;

    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Row(spacing: 8, children: [Icon(Icons.logout), Text(title)]),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => RouterUtil.pop(), // cancelar
              child: const Text(
                'Cancelar',
                style: TextStyle(color: Colors.red),
              ),
            ),
            TextButton(
              onPressed: () {
                RouterUtil.pop(); // cerrar el diálogo
                onConfirm(); // ejecutar cierre de sesión
              },
              child: const Text(
                'Cerrar Sesión',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        );
      },
    );
  }
}
