import 'package:hacom_app_test/app/core/network/failure.dart';
import 'package:hacom_app_test/app/core/utils/global_names_key_storage_util.dart';
import 'package:hacom_app_test/app/data/source/providers/index.providers.dart';
import 'package:hacom_app_test/app/domain/defs/type_defs.dart';
import 'package:hacom_app_test/app/domain/models/data_response/data_response.dart';
import 'package:hacom_app_test/app/domain/models/vehicles/vehicle_response.dart';

class VehicleProvider {
  VehicleProvider({
    required DioHttpProvider dioHttpProvider,
    required StorageProvider storageProvider,
  }) : _dioHttpProvider = dioHttpProvider,
       _storageProvider = storageProvider;

  final DioHttpProvider _dioHttpProvider;
  final StorageProvider _storageProvider;

  FutureEither<Failure, DataResponse> getAll() async {
    final id = await _storageProvider.readValue(GlobalNameStorageKeyUtils.ID);
    return await _dioHttpProvider.get(
      '/vehicles?accountId=$id',
      converter: (json) => DataResponse<List<VehicleResponse>>.fromJson(
        json as Map<String, dynamic>,
        (dataJson) => (dataJson as List<dynamic>)
            .map((e) => VehicleResponse.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
    );
  }
}
