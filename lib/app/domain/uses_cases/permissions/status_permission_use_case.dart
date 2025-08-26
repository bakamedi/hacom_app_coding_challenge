import 'package:hacom_app_test/app/domain/repositories/permission/permission_repository.dart';
import 'package:permission_handler/permission_handler.dart';

class StatusPermissionUseCase {
  StatusPermissionUseCase({required PermissionRepository permissionRepository})
    : _permissionRepository = permissionRepository;
  final PermissionRepository _permissionRepository;

  Future<bool> call(Permission permission) async {
    return await _permissionRepository.checkPermission(permission);
  }
}
