import 'package:hacom_app_test/app/core/network/failure.dart';
import 'package:hacom_app_test/app/data/source/providers/dio/dio_http_provider.dart';
import 'package:hacom_app_test/app/domain/defs/type_defs.dart';
import 'package:hacom_app_test/app/domain/models/data_response/data_response.dart';
import 'package:hacom_app_test/app/domain/models/user/login/login_model.dart';
import 'package:hacom_app_test/app/domain/models/user/user_token/user_with_token_model.dart';
import 'package:hacom_app_test/app/presentation/global/extensions/generic_ext.dart';

class AuthProvider {
  AuthProvider({required DioHttpProvider dioHttpProvider})
    : _dioHttpProvider = dioHttpProvider;

  final DioHttpProvider _dioHttpProvider;

  FutureEither<Failure, DataResponse> login({required Login sendLogin}) async {
    return await _dioHttpProvider.post(
      '/account/login/',
      body: sendLogin.toJsonString(),
      converter: (json) => DataResponse<UserWithToken>.fromJson(
        json as Map<String, dynamic>,
        (dataJson) => UserWithToken.fromJson(dataJson as Map<String, dynamic>),
      ),
    );
  }
}
