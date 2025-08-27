import 'package:hacom_app_test/app/core/network/failure.dart';
import 'package:hacom_app_test/app/data/source/api/auth/auth_provider.dart';
import 'package:hacom_app_test/app/domain/defs/type_defs.dart';
import 'package:hacom_app_test/app/domain/models/data_response/data_response.dart';
import 'package:hacom_app_test/app/domain/models/user/login/login_model.dart';
import 'package:hacom_app_test/app/domain/repositories/auth/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl({required AuthProvider authProvider})
    : _authProvider = authProvider;

  final AuthProvider _authProvider;

  @override
  FutureEither<Failure, DataResponse> login(Login login) async {
    return await _authProvider.login(sendLogin: login);
  }
}
