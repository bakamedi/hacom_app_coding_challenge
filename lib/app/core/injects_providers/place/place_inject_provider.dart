
import 'package:flutter_meedu/providers.dart';
import 'package:hacom_app_test/app/core/injects_providers/dio/dio_inject_provider.dart';
import 'package:hacom_app_test/app/data/source/api/places/place_provider.dart';

class PlaceInjectProvider {
  PlaceInjectProvider._();

  static final placeProvider = Provider<PlaceProvider>(
    (ref) => PlaceProvider(
      dioHttpProvider: DioInjectProvider.dioProvider.read(),
    ),
  );
}
