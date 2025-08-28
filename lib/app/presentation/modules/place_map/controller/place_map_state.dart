import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hacom_app_test/app/domain/models/places/place_response.dart';

part 'place_map_state.freezed.dart';

@freezed
abstract class PlaceMapState with _$PlaceMapState {
  const PlaceMapState._();

  const factory PlaceMapState({PlaceResponse? place}) = _PlaceMapState;

  static PlaceMapState get initialState => const PlaceMapState();
}
