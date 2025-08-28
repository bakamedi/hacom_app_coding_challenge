import 'package:flutter_meedu/providers.dart';
import 'package:hacom_app_test/app/presentation/modules/place_map/controller/place_map_controller.dart';
import 'package:hacom_app_test/app/presentation/modules/place_map/controller/place_map_state.dart';

final placeMapProvider = Provider.state<PlaceMapController, PlaceMapState>(
  (_) => PlaceMapController(PlaceMapState.initialState),
);
