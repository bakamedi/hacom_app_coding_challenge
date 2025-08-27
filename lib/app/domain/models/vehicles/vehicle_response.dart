import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_response.freezed.dart';
part 'vehicle_response.g.dart';

@freezed
abstract class VehicleResponse with _$VehicleResponse {
  const factory VehicleResponse({
    required int id,
    required String name,
    required String stateType,
    required double latitude,
    required double longitude,
    required int alert,
  }) = _VehicleResponse;

  factory VehicleResponse.fromJson(Map<String, dynamic> json) =>
      _$VehicleResponseFromJson(json);
}
