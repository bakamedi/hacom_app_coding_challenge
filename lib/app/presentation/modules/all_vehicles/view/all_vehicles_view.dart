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

    final vehicles = allVehiclesController.state.vehicles;

    return Stack(
      children: [
        FlutterMap(
          options: MapOptions(
            initialCenter: vehicles.isNotEmpty
                ? LatLng(vehicles.first.latitude, vehicles.first.longitude)
                : LatLng(-12.046374, -77.042793), // fallback Lima
            initialZoom: 10.2,
          ),
          children: [
            TileLayer(
              urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
              userAgentPackageName: "com.example.hacom_app_test",
            ),
            MarkerLayer(
              markers: [
                ...vehicles.map(
                  (vehicle) => Marker(
                    point: LatLng(vehicle.latitude, vehicle.longitude),
                    width: 80,
                    height: 80,
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 2,
                            vertical: 2,
                          ),
                          child: ColoredBox(
                            color: Colors.black87,
                            child: Text(
                              vehicle.name, // 👈 nombre del vehículo
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Icon(Icons.navigation, color: Colors.green, size: 35),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Positioned(
          top: 16,
          left: 10,
          child: const SafeArea(child: BackButton(color: Colors.black)),
        ),
      ],
    );
  }
}
