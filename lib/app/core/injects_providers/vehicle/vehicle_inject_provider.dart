import 'package:flutter_meedu/providers.dart';
import 'package:hacom_app_test/app/core/injects_providers/index_injects_providers.dart';
import 'package:hacom_app_test/app/data/source/api/api.provider.dart';

class VehicleInjectProvider {
  VehicleInjectProvider._();

  static final vehicleProvider = Provider(
    (ref) => VehicleProvider(
      dioHttpProvider: DioInjectProvider.dioProvider.read(),
      storageProvider: StorageInjectProvider.storageInjectProvider.read(),
    ),
  );
}
