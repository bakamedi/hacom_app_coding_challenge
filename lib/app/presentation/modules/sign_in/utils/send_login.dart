import 'package:hacom_app_test/app/presentation/global/utils/dialogs_util.dart';
import 'package:hacom_app_test/app/presentation/global/utils/router_util.dart';
import 'package:hacom_app_test/app/presentation/modules/sign_in/controller/sign_in_provider.dart';
import 'package:hacom_app_test/app/presentation/router/app_routes/dashboard_route.dart';

void sendLogin() async {
  final signInController = signInProvider.read();
  final response = await signInController.signIn();

  response.fold(
    (failure) {
      DialogsUtil.show(iconData: failure.icon, message: failure.message);
    },
    (success) {
      print(success);
      RouterUtil.pushReplacement(DashboardRoute.path);
    },
  );
}
