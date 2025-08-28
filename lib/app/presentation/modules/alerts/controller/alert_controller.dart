import 'package:flutter_meedu/notifiers.dart';
import 'package:hacom_app_test/app/domain/uses_cases/vehicles/get_vehicles_use_case.dart';
import 'package:hacom_app_test/app/presentation/global/utils/toast_util.dart';
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

    response.fold(
      (failure) {
        onlyUpdate(state = state.copyWith(loading: false));
      },
      (vehicles) {
        onlyUpdate(state = state.copyWith(vehicles: vehicles, loading: false));
        ToastUtil.show(message: 'Notificaciones obtenidos satisfactoriamente');
      },
    );
  }
}
