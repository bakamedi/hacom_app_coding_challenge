import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hacom_app_test/app/domain/models/vehicles/vehicle_response.dart';

part 'vehicle_state.freezed.dart';

@freezed
abstract class VehicleState with _$VehicleState {
  const VehicleState._();

  const factory VehicleState({
    @Default([]) List<VehicleResponse> vehicles,
    @Default(true) bool loading,
  }) = _VehicleState;

  static VehicleState get initialState =>
      const VehicleState(vehicles: [], loading: true);
}
