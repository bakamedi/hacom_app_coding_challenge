import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_meedu/consumer.dart';
import 'package:hacom_app_test/app/core/adaptive_screen/adaptive_screen.dart';
import 'package:hacom_app_test/app/presentation/modules/all_vehicles/controller/all_vehicles_provider.dart';

import 'package:latlong2/latlong.dart';

class AllVehiclesView extends ConsumerWidget {
  const AllVehiclesView({super.key, required this.adaptiveScreen});

  final AdaptiveScreen adaptiveScreen;

  @override
  Widget build(BuildContext context, BuilderRef ref) {
    final allVehiclesController = ref.watch(allVehiclesProvider);
    return FlutterMap(
      options: MapOptions(
        initialCenter: LatLng(
          allVehiclesController.state.latitude,
          allVehiclesController.state.longitude,
        ),
        initialZoom: 10.2,
      ),
      children: [
        TileLayer(
          urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
          userAgentPackageName: "com.example.hacom_app_test",
        ),
        MarkerLayer(
          markers: [
            Marker(
              point: LatLng(
                allVehiclesController.state.latitude,
                allVehiclesController.state.longitude,
              ),
              width: 40,
              height: 40,
              child: const Icon(
                Icons.location_pin,
                color: Colors.red,
                size: 40,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
