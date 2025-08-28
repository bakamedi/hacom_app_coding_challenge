import 'package:flutter_meedu/notifiers.dart';
import 'package:hacom_app_test/app/domain/uses_cases/vehicles/get_vehicles_use_case.dart';
import 'package:hacom_app_test/app/presentation/global/utils/toast_util.dart';
import 'package:hacom_app_test/app/presentation/modules/vehicles/controller/vehicle_state.dart';

class VehiclesController extends StateNotifier<VehicleState> {
  VehiclesController(
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
        ToastUtil.show(message: 'Vehiculos obtenidos satisfactoriamente');
      },
    );
  }
}
