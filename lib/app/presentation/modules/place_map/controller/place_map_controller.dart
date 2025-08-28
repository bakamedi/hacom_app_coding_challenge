import 'package:flutter_meedu/notifiers.dart';
import 'package:hacom_app_test/app/domain/models/places/place_response.dart';
import 'package:hacom_app_test/app/presentation/modules/place_map/controller/place_map_state.dart';

class PlaceMapController extends StateNotifier<PlaceMapState> {
  PlaceMapController(super.initialState);

  void onChangePlace({required PlaceResponse place}) {
    onlyUpdate(state = state.copyWith(place: place));
  }
}
