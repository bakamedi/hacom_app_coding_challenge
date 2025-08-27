import 'package:flutter_meedu/providers.dart';
import 'package:hacom_app_test/app/data/source/api/auth/auth_provider.dart';

import '../dio/dio_inject_provider.dart';

class AuthInjectProvider {
  AuthInjectProvider._();

  static final authProvider = Provider(
    (ref) =>
        AuthProvider(dioHttpProvider: DioInjectProvider.dioProvider.read()),
  );
}
