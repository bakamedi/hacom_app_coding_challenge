// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_response.freezed.dart';
part 'vehicle_response.g.dart';

enum StateType { STOP, ONLINE, RUNNING, OFFLINE }

@freezed
abstract class VehicleResponse with _$VehicleResponse {
  const factory VehicleResponse({
    required int id,
    required String name,
    @JsonKey(fromJson: _stateTypeFromJson, toJson: _stateTypeToJson)
    required StateType stateType,
    required double latitude,
    required double longitude,
    required int alert,
  }) = _VehicleResponse;

  factory VehicleResponse.fromJson(Map<String, dynamic> json) =>
      _$VehicleResponseFromJson(json);
}

/// ---- Helpers para transformar String ↔ Enum ----
StateType _stateTypeFromJson(String value) {
  return StateType.values.firstWhere(
    (e) => e.toString().split('.').last.toUpperCase() == value.toUpperCase(),
    orElse: () => StateType.OFFLINE, // default si no existe
  );
}

String _stateTypeToJson(StateType state) => state.toString().split('.').last;
