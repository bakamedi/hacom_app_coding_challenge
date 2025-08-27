import 'package:hacom_app_test/app/domain/models/data_response/data_response.dart';
import 'package:hacom_app_test/app/domain/models/user/login/login_model.dart';

import '../../../core/network/failure.dart';
import '../../../domain/defs/type_defs.dart';
import '../../../domain/repositories/auth/auth_repository.dart';
import '../../source/api/api.provider.dart';

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl({required AuthProvider authProvider})
    : _authProvider = authProvider;

  final AuthProvider _authProvider;

  @override
  FutureEither<Failure, DataResponse> login(Login login) async {
    return await _authProvider.login(sendLogin: login);
  }
}
