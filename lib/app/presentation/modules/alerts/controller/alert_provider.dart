import 'package:flutter_meedu/providers.dart';
import 'package:hacom_app_test/app/domain/uses_cases/uses_cases.dart';
import 'package:hacom_app_test/app/presentation/modules/alerts/controller/alert_controller.dart';
import 'package:hacom_app_test/app/presentation/modules/alerts/controller/alert_state.dart';

final alertProvider = Provider.state<AlertController, AlertState>(
  (_) => AlertController(
    AlertState.initialState,
    getVehiclesUseCase: UseCases.getAllVehicles.read(),
  ),
);
