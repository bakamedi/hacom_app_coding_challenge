import 'package:hacom_app_test/app/domain/models/user/login/login_model.dart';
import 'package:hacom_app_test/app/domain/repositories/auth/auth_repository.dart';

import '../../../core/network/either.dart';
import '../../../core/network/handle_failure.dart';
import '../../../core/utils/failure_view_data.dart';
import '../../../domain/defs/type_defs.dart';

class LoginUseCase {
  LoginUseCase({required AuthRepository authRepository})
    : _authRepository = authRepository;

  final AuthRepository _authRepository;

  FutureEither<FailureViewData, String> call(Login login) async {
    final result = await _authRepository.login(login);
    return result.fold(
      (failure) {
        return Left(mapFailureToView(failure));
      },
      (data) {
        print(data);
        return Right('success');
      },
    );
  }
}
