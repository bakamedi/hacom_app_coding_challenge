
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hacom_app_test/app/domain/models/places/place_response.dart';

part 'place_state.freezed.dart';

@freezed
abstract class PlaceState with _$PlaceState {
  const PlaceState._();

  const factory PlaceState({
    @Default([]) List<PlaceResponse> places,
    @Default(true) bool loading,
  }) = _PlaceState;

  static PlaceState get initialState =>
      const PlaceState(places: [], loading: true);
}
