import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hacom_app_test/app/domain/models/vehicles/vehicle_response.dart';

part 'vehicles_response.freezed.dart';
part 'vehicles_response.g.dart';

@freezed
abstract class VehiclesResponse with _$VehiclesResponse {
  const factory VehiclesResponse({required List<VehicleResponse> data}) =
      _VehiclesResponse;

  factory VehiclesResponse.fromJson(Map<String, dynamic> json) =>
      _$VehiclesResponseFromJson(json);
}
