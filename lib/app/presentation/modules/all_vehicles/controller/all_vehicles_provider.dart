import 'package:flutter_meedu/providers.dart';
import 'package:hacom_app_test/app/presentation/modules/all_vehicles/controller/all_vehicles_controller.dart';
import 'package:hacom_app_test/app/presentation/modules/all_vehicles/controller/all_vehicles_state.dart';

final allVehiclesProvider =
    Provider.state<AllVehiclesController, AllVehiclesState>(
      (_) => AllVehiclesController(AllVehiclesState.initialState),
    );
