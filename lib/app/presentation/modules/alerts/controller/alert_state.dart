import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hacom_app_test/app/domain/models/vehicles/vehicle_response.dart';

part 'alert_state.freezed.dart';

@freezed
abstract class AlertState with _$AlertState {
  const AlertState._();

  const factory AlertState({
    @Default([]) List<VehicleResponse> vehicles,
    @Default(true) bool loading,
  }) = _AlertState;

  static AlertState get initialState => const AlertState();
}
