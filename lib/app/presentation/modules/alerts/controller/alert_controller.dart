import 'package:flutter_meedu/notifiers.dart';
import 'package:hacom_app_test/app/domain/uses_cases/vehicles/get_vehicles_use_case.dart';
import 'package:hacom_app_test/app/presentation/modules/alerts/controller/alert_state.dart';

class AlertController extends StateNotifier<AlertState> {
  AlertController(
    super.initialState, {
    required GetVehiclesUseCase getVehiclesUseCase,
  }) : _getVehiclesUseCase = getVehiclesUseCase {
    init();
  }

  final GetVehiclesUseCase _getVehiclesUseCase;

  void init() async {
    onlyUpdate(state = state.copyWith(loading: true));

    final response = await _getVehiclesUseCase.call();
    onlyUpdate(state = state.copyWith(loading: false));

    response.fold(
      (failure) {
        // manejar el error, por ejemplo guardarlo en el estado
      },
      (vehicles) {
        // éxito, actualizar la lista de vehículos
        onlyUpdate(state = state.copyWith(vehicles: vehicles));
      },
    );
  }
}
