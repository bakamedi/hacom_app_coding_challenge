import 'package:hacom_app_test/app/presentation/global/controllers/session/session_gp.dart';
import 'package:hacom_app_test/app/presentation/global/utils/dialogs_util.dart';
import 'package:hacom_app_test/app/presentation/global/utils/loader_util.dart';
import 'package:hacom_app_test/app/presentation/global/utils/router_util.dart';
import 'package:hacom_app_test/app/presentation/modules/sign_in/controller/sign_in_provider.dart';
import 'package:hacom_app_test/app/presentation/router/app_routes/dashboard_route.dart';

void sendLogin() async {
  final signInController = signInProvider.read();

  final isValid = signInController.state.formSignIn!.currentState!.validate();
  if (!isValid) {
    return;
  }
  LoaderUtil.show();
  final response = await signInController.signIn();

  response.fold(
    (failure) {
      LoaderUtil.hide();
      DialogsUtil.show(iconData: failure.icon, message: failure.message);
    },
    (success) async {
      final sessionGC = sessionGP.read();
      await sessionGC.saveToken(success);
      LoaderUtil.hide();
      RouterUtil.pushReplacement(DashboardRoute.path);
    },
  );
}
