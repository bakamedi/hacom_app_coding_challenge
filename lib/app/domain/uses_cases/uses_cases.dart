import 'package:flutter_meedu/providers.dart';
import 'package:hacom_app_test/app/domain/inject_repository.dart';
import 'package:hacom_app_test/app/domain/uses_cases/auth/login_use_case.dart';
import 'package:hacom_app_test/app/domain/uses_cases/permissions/request_permission_use_case.dart';
import 'package:hacom_app_test/app/domain/uses_cases/permissions/status_permission_use_case.dart';
import 'package:hacom_app_test/app/domain/uses_cases/user_preferences/get_token_use_case.dart';
import 'package:hacom_app_test/app/domain/uses_cases/user_preferences/log_out_use_case.dart';
import 'package:hacom_app_test/app/domain/uses_cases/user_preferences/save_token_use_case.dart';
import 'package:hacom_app_test/app/domain/uses_cases/vehicles/get_vehicles_use_case.dart';
import 'package:hacom_app_test/app/domain/uses_cases/places/get_places_use_case.dart';

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

  static final loginUseCase = Provider(
    (ref) => LoginUseCase(authRepository: Repositories.authRep.read()),
  );

  static final saveTokenUseCase = Provider(
    (ref) =>
        SaveTokenUseCase(userPrefsRepository: Repositories.userPrefsRep.read()),
  );

  static final getTokenUseCase = Provider(
    (ref) =>
        GetTokenUseCase(userPrefsRepository: Repositories.userPrefsRep.read()),
  );

  static final logOutUseCase = Provider(
    (ref) =>
        LogOutUseCase(userPrefsRepository: Repositories.userPrefsRep.read()),
  );

  static final getAllVehicles = Provider(
    (ref) =>
        GetVehiclesUseCase(vehicleRepository: Repositories.vehicleRep.read()),
  );

  static final getPlaces = Provider(
    (ref) => GetPlacesUseCase(placeRepository: Repositories.placeRep.read()),
  );
}
