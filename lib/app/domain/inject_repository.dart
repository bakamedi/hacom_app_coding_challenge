import 'package:flutter_meedu/providers.dart';
import 'package:hacom_app_test/app/data/repositories_impl/permission/permission_repository_impl.dart';
import 'package:hacom_app_test/app/domain/repositories/permission/permission_repository.dart';

class Repositories {
  Repositories._();

  static final permissionRep = Provider<PermissionRepository>(
    (ref) => PermissionRepositoryImpl(),
  );
}
