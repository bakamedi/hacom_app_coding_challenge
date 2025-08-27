import 'package:hacom_app_test/app/domain/models/data_response/data_response.dart';
import 'package:hacom_app_test/app/domain/models/user/login/login_model.dart';

import '../../../core/network/failure.dart';
import '../../defs/type_defs.dart';

abstract class AuthRepository {
  FutureEither<Failure, DataResponse> login(Login login);
}
