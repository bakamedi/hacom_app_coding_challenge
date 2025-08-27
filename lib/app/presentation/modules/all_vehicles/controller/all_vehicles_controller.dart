import 'package:flutter_meedu/notifiers.dart';
import 'package:hacom_app_test/app/domain/models/vehicles/vehicle_response.dart';
import 'package:hacom_app_test/app/presentation/modules/all_vehicles/controller/all_vehicles_state.dart';

class AllVehiclesController extends StateNotifier<AllVehiclesState> {
  AllVehiclesController(super.initialState);

  void onChangeLatLng({required double latitude, required double longitude}) {
    onlyUpdate(
      state = state.copyWith(latitude: latitude, longitude: longitude),
    );
  }

  void onChangeVehicles({required List<VehicleResponse> vehicles}) {
    onlyUpdate(state = state.copyWith(vehicles: vehicles));
  }
}
