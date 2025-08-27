import 'package:flutter_meedu/notifiers.dart';
import 'package:hacom_app_test/app/domain/uses_cases/permissions/request_permission_use_case.dart';
import 'package:hacom_app_test/app/domain/uses_cases/permissions/status_permission_use_case.dart';
import 'package:hacom_app_test/app/domain/uses_cases/user_preferences/get_token_use_case.dart';
import 'package:hacom_app_test/app/domain/uses_cases/user_preferences/save_token_use_case.dart';
import 'package:permission_handler/permission_handler.dart';

import 'session_state.dart';

class SessionGC extends StateNotifier<SessionState> {
  SessionGC(
    super.initialState, {
    required RequestPermissionUseCase requestPermissionUseCase,
    required StatusPermissionUseCase statusPermissionUseCase,
    required GetTokenUseCase getTokenUseCase,
    required SaveTokenUseCase saveTokenUseCase,
  }) : _requestPermissionUseCase = requestPermissionUseCase,
       _statusPermissionUseCase = statusPermissionUseCase,
       _getTokenUseCase = getTokenUseCase,
       _saveTokenUseCase = saveTokenUseCase;

  final RequestPermissionUseCase _requestPermissionUseCase;
  final StatusPermissionUseCase _statusPermissionUseCase;
  final GetTokenUseCase _getTokenUseCase;
  final SaveTokenUseCase _saveTokenUseCase;

  // Functions
  Future<void> saveToken(String token) async {
    await _saveTokenUseCase.call(token);
  }

  Future<String> getToken() async {
    return await _getTokenUseCase.call();
  }

  Future<bool> onRequestPermission(Permission permission) async {
    return await _requestPermissionUseCase.call(permission);
  }

  Future<bool> getPermission(Permission permission) async {
    return await _statusPermissionUseCase.call(permission);
  }
}
