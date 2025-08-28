import 'package:flutter_meedu/notifiers.dart';
import 'package:hacom_app_test/app/domain/uses_cases/places/get_places_use_case.dart';
import 'package:hacom_app_test/app/presentation/global/utils/toast_util.dart';
import 'package:hacom_app_test/app/presentation/modules/places/controller/place_state.dart';

class PlacesController extends StateNotifier<PlaceState> {
  PlacesController(
    super.initialState, {
    required GetPlacesUseCase getPlacesUseCase,
  }) : _getPlacesUseCase = getPlacesUseCase {
    init();
  }

  final GetPlacesUseCase _getPlacesUseCase;

  void init() async {
    onlyUpdate(state = state.copyWith(loading: true));

    final response = await _getPlacesUseCase.call();
    onlyUpdate(state = state.copyWith(loading: false));

    response.fold((failure) {}, (places) {
      onlyUpdate(state = state.copyWith(places: places));
      ToastUtil.show(message: 'Lugar obtenidos satisfactoriamente');
    });
  }
}
