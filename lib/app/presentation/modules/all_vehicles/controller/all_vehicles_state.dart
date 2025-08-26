import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_vehicles_state.freezed.dart';

@freezed
abstract class AllVehiclesState with _$AllVehiclesState {
  const AllVehiclesState._();

  const factory AllVehiclesState({
    @Default(0.0) double latitude,
    @Default(0.0) double longitude,
  }) = _AllVehiclesState;

  static AllVehiclesState get initialState =>
      const AllVehiclesState(latitude: 0.0, longitude: 0.0);
}
