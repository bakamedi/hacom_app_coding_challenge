import 'package:flutter_meedu/providers.dart';
import 'package:hacom_app_test/app/domain/uses_cases/uses_cases.dart';
import 'package:hacom_app_test/app/presentation/global/controllers/session/session_gc.dart';
import 'package:hacom_app_test/app/presentation/global/controllers/session/session_state.dart';

final sessionGP = Provider.state<SessionGC, SessionState>(
  (_) => SessionGC(
    SessionState.initialState,
    requestPermissionUseCase: UseCases.requestPermissionUseCase.read(),
    statusPermissionUseCase: UseCases.statusPermissionUseCase.read(),
  ),
  autoDispose: false,
);
