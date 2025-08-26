import 'package:flutter_meedu/notifiers.dart';
import 'package:hacom_app_test/app/domain/uses_cases/permissions/request_permission_use_case.dart';
import 'package:hacom_app_test/app/domain/uses_cases/permissions/status_permission_use_case.dart';
import 'package:permission_handler/permission_handler.dart';

import 'session_state.dart';

class SessionGC extends StateNotifier<SessionState> {
  SessionGC(
    super.initialState, {
    required RequestPermissionUseCase requestPermissionUseCase,
    required StatusPermissionUseCase statusPermissionUseCase,
  }) : _requestPermissionUseCase = requestPermissionUseCase,
       _statusPermissionUseCase = statusPermissionUseCase;

  final RequestPermissionUseCase _requestPermissionUseCase;
  final StatusPermissionUseCase _statusPermissionUseCase;

  // Setters

  Future<void> initPermission() async {
    final permissionsToCheck = {
      Permission.notification: 'notifications',
      Permission.location: 'location',
      Permission.photos: 'photos',
    };

    final results = <String, bool>{};

    for (final entry in permissionsToCheck.entries) {
      final result = await getPermission(entry.key);
      results[entry.value] = result;
    }

    onlyUpdate(state = state.copyWith());
  }

  Future<bool> onRequestPermission(Permission permission) async {
    return await _requestPermissionUseCase.call(permission);
  }

  Future<bool> getPermission(Permission permission) async {
    return await _statusPermissionUseCase.call(permission);
  }
}
