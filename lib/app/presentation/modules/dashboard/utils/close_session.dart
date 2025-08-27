import 'package:hacom_app_test/app/presentation/global/utils/dialogs_util.dart';
import 'package:hacom_app_test/app/presentation/global/utils/loader_util.dart';
import 'package:hacom_app_test/app/presentation/global/utils/router_util.dart';
import 'package:hacom_app_test/app/presentation/modules/dashboard/controller/dashboard_provider.dart';
import 'package:hacom_app_test/app/presentation/router/app_routes/sign_in_route.dart';

void closeSession() {
  DialogsUtil.simple(
    title: 'Cerrado de la Sesión',
    message: '¿Estás seguro de que quieres cerrar sesión?',
    onConfirm: () async {
      LoaderUtil.show();
      final dashboardController = dashboardProvider.read();
      await dashboardController.logOut();
      RouterUtil.pushReplacement(SignInRoute.path);
      LoaderUtil.hide();
    },
  );
}
