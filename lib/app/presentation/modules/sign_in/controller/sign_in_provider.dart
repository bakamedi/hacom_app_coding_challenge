import 'package:flutter_meedu/providers.dart';
import 'package:hacom_app_test/app/domain/uses_cases/uses_cases.dart';
import 'package:hacom_app_test/app/presentation/modules/sign_in/controller/sign_in_controller.dart';
import 'package:hacom_app_test/app/presentation/modules/sign_in/controller/sign_in_state.dart';

final signInProvider = Provider.state<SingInController, SignInState>(
  (_) => SingInController(
    SignInState.initialState,
    loginUseCase: UseCases.loginUseCase.read(),
  ),
);
