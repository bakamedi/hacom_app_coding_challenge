import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_meedu/consumer/consumer_widget.dart';
import 'package:hacom_app_test/app/core/adaptive_screen/adaptive_screen.dart';
import 'package:hacom_app_test/app/presentation/modules/place_map/controller/place_map_provider.dart';
import 'package:latlong2/latlong.dart';

class PlaceMapView extends ConsumerWidget {
  const PlaceMapView({super.key, required this.adaptiveScreen});
  final AdaptiveScreen adaptiveScreen;

  @override
  Widget build(BuildContext context, BuilderRef ref) {
    final placeMapController = ref.watch(placeMapProvider);

    final place = placeMapController.state.place;

    return Stack(
      children: [
        FlutterMap(
          options: MapOptions(
            initialCenter: place != null
                ? LatLng(place.latitude, place.longitude)
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
                Marker(
                  point: LatLng(place!.latitude, place.longitude),
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
                            place.name, // 👈 nombre del vehículo
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
