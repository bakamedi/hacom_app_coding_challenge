import 'package:hacom_app_test/app/presentation/global/utils/dialogs_util.dart';

void closeSession() {
  DialogsUtil.simple(
    title: 'Cerrado de la Sesión',
    message: '¿Estás seguro de que quieres cerrar sesión?',
    onConfirm: () {},
  );
}
