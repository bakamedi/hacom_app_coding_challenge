import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hacom_app_test/app/domain/models/vehicles/vehicle_response.dart';
import 'package:hacom_app_test/app/presentation/global/controllers/session/session_gp.dart';
import 'package:hacom_app_test/app/presentation/global/utils/dialogs_util.dart';
import 'package:hacom_app_test/app/presentation/global/utils/router_util.dart';
import 'package:hacom_app_test/app/presentation/modules/all_vehicles/controller/all_vehicles_provider.dart';
import 'package:hacom_app_test/app/presentation/router/app_routes/all_vehicles_route.dart';
import 'package:permission_handler/permission_handler.dart';

void requestMap({required List<VehicleResponse> vehicles}) async {
  final sessionGC = sessionGP.read();
  final response = await sessionGC.onRequestPermission(
    Permission.locationWhenInUse,
  );
  if (response) {
    final position = await Geolocator.getCurrentPosition();
    final allVehiclesController = allVehiclesProvider.read();
    allVehiclesController.onChangeLatLng(
      latitude: position.latitude,
      longitude: position.longitude,
    );
    allVehiclesController.onChangeVehicles(vehicles: vehicles);
    RouterUtil.push(AllVehiclesRoute.path);
  } else {
    DialogsUtil.show(
      iconData: Icons.error,
      message: 'No tienes permisos de ubicación para abrir el mapa',
    );
  }
}
