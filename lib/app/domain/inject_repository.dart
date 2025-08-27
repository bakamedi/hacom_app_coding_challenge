import 'package:flutter_meedu/providers.dart';
import 'package:hacom_app_test/app/core/injects_providers/index_injects_providers.dart';
import 'package:hacom_app_test/app/data/repositories_impl/index_repositories_impl.dart';
import 'package:hacom_app_test/app/domain/repositories/index_repositories.dart';

class Repositories {
  Repositories._();

  static final permissionRep = Provider<PermissionRepository>(
    (ref) => PermissionRepositoryImpl(),
  );

  static final authRep = Provider<AuthRepository>(
    (ref) => AuthRepositoryImpl(
      authProvider: AuthInjectProvider.authProvider.read(),
    ),
  );
}
