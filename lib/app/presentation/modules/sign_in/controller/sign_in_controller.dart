import 'package:flutter_meedu/notifiers.dart';
import 'package:hacom_app_test/app/core/utils/failure_view_data.dart';
import 'package:hacom_app_test/app/domain/defs/type_defs.dart';
import 'package:hacom_app_test/app/domain/uses_cases/auth/login_use_case.dart';

import 'sign_in_state.dart';

class SingInController extends StateNotifier<SignInState> {
  SingInController(super.initialState, {required LoginUseCase loginUseCase})
    : _loginUseCase = loginUseCase;

  final LoginUseCase _loginUseCase;

  FutureEither<FailureViewData, String> signIn() async {
    return await _loginUseCase.call(state.login);
  }

  void onChangeName(String name) {
    onlyUpdate(state = state.copyWith(login: state.login.copyWith(name: name)));
  }

  void onChangePhone(String phone) {
    onlyUpdate(
      state = state.copyWith(login: state.login.copyWith(phone: phone)),
    );
  }
}
