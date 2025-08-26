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

    final limaMarkers = [
      LatLng(-12.046374, -77.042793), // Plaza Mayor
      LatLng(-12.121420, -77.034610), // Miraflores
      LatLng(-12.046373, -77.030590), // Parque Kennedy
      LatLng(-12.109000, -77.036500), // Barranco
      LatLng(-12.0721, -77.1236), // San Isidro
    ];
    return Stack(
      children: [
        FlutterMap(
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
                ...limaMarkers.map(
                  (point) => Marker(
                    point: point,
                    width: 80,
                    height: 80,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 2,
                            vertical: 2,
                          ),
                          child: ColoredBox(
                            color: Colors.blueAccent,
                            child: Text(
                              'hola',
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.navigation,
                          color: Colors.green,
                          size: 35,
                        ),
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
          child: SafeArea(child: BackButton(color: Colors.black)),
        ),
      ],
    );
  }
}
