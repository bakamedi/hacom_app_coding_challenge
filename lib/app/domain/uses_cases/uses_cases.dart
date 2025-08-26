import 'package:flutter_meedu/providers.dart';
import 'package:hacom_app_test/app/domain/inject_repository.dart';
import 'package:hacom_app_test/app/domain/uses_cases/permissions/request_permission_use_case.dart';
import 'package:hacom_app_test/app/domain/uses_cases/permissions/status_permission_use_case.dart';

class UseCases {
  UseCases._();

  static final requestPermissionUseCase = Provider(
    (ref) => RequestPermissionUseCase(
      permissionRepository: Repositories.permissionRep.read(),
    ),
  );

  static final statusPermissionUseCase = Provider(
    (ref) => StatusPermissionUseCase(
      permissionRepository: Repositories.permissionRep.read(),
    ),
  );
}
