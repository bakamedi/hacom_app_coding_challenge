import 'package:flutter_meedu/providers.dart';
import 'package:hacom_app_test/app/domain/uses_cases/uses_cases.dart';
import 'package:hacom_app_test/app/presentation/modules/dashboard/controller/dashboard_controller.dart';
import 'package:hacom_app_test/app/presentation/modules/dashboard/controller/dashboard_state.dart';

final dashboardProvider = Provider.state<DashboardController, DashboardState>(
  (_) => DashboardController(
    DashboardState.initialState,
    logOutUseCase: UseCases.logOutUseCase.read(),
  ),
);
