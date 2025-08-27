import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_response.freezed.dart';
part 'place_response.g.dart';

@freezed
abstract class PlaceResponse with _$PlaceResponse {
  const factory PlaceResponse({
    required int id,
    required String name,
    required double latitude,
    required double longitude,
    required DateTime createdAt,
    required DateTime updatedAt,
    required int accountId,
  }) = _PlaceResponse;

  factory PlaceResponse.fromJson(Map<String, dynamic> json) =>
      _$PlaceResponseFromJson(json);
}
