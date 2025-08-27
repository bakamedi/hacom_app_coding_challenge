import 'package:flutter_meedu/notifiers.dart';
import 'package:hacom_app_test/app/domain/uses_cases/user_preferences/log_out_use_case.dart';
import 'package:hacom_app_test/app/presentation/modules/dashboard/controller/dashboard_state.dart';

class DashboardController extends StateNotifier<DashboardState> {
  DashboardController(
    super.initialState, {
    required LogOutUseCase logOutUseCase,
  }) : _logOutUseCase = logOutUseCase;

  final LogOutUseCase _logOutUseCase;

  Future<void> logOut() async {
    await _logOutUseCase.call();
  }
}
