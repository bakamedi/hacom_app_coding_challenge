import 'package:flutter_meedu/providers.dart';
import 'package:hacom_app_test/app/domain/uses_cases/uses_cases.dart';
import 'package:hacom_app_test/app/presentation/modules/places/controller/place_controller.dart';
import 'package:hacom_app_test/app/presentation/modules/places/controller/place_state.dart';

final placeProvider = Provider.state<PlacesController, PlaceState>(
  (_) => PlacesController(
    PlaceState.initialState,
    getPlacesUseCase: UseCases.getPlaces.read(),
  ),
);
