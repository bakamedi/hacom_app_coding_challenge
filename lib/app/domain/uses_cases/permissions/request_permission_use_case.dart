import 'package:permission_handler/permission_handler.dart';

import '../../repositories/index_repositories.dart';

class RequestPermissionUseCase {
  RequestPermissionUseCase({required PermissionRepository permissionRepository})
    : _permissionRepository = permissionRepository;
  final PermissionRepository _permissionRepository;

  Future<bool> call(Permission permission) async {
    return await _permissionRepository.requestPermission(permission);
  }
}
