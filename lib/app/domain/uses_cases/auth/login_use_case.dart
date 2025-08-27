import 'package:hacom_app_test/app/core/network/either.dart';
import 'package:hacom_app_test/app/core/network/handle_failure.dart';
import 'package:hacom_app_test/app/core/utils/failure_view_data.dart';
import 'package:hacom_app_test/app/domain/defs/type_defs.dart';
import 'package:hacom_app_test/app/domain/models/user/login/login_model.dart';
import 'package:hacom_app_test/app/domain/models/user/user_token/user_with_token_model.dart';
import 'package:hacom_app_test/app/domain/repositories/auth/auth_repository.dart';

class LoginUseCase {
  LoginUseCase({required AuthRepository authRepository})
    : _authRepository = authRepository;

  final AuthRepository _authRepository;

  FutureEither<FailureViewData, String> call(Login login) async {
    final result = await _authRepository.login(login);
    return result.fold((failure) => Left(mapFailureToView(failure)), (
      response,
    ) {
      final UserWithToken resToken = response.data;
      return Right(resToken.token);
    });
  }
}
