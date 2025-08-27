import 'package:flutter_meedu/providers.dart';
import 'package:hacom_app_test/app/domain/uses_cases/uses_cases.dart';
import 'package:hacom_app_test/app/presentation/modules/vehicles/controller/vehicle_controller.dart';
import 'package:hacom_app_test/app/presentation/modules/vehicles/controller/vehicle_state.dart';

final vehicleProvider = Provider.state<VehiclesController, VehicleState>(
  (_) => VehiclesController(
    VehicleState.initialState,
    getVehiclesUseCase: UseCases.getAllVehicles.read(),
  ),
);
