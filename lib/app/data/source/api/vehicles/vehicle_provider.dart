import 'package:hacom_app_test/app/core/network/failure.dart';
import 'package:hacom_app_test/app/data/source/providers/dio/dio_http_provider.dart';
import 'package:hacom_app_test/app/domain/defs/type_defs.dart';
import 'package:hacom_app_test/app/domain/models/data_response/data_response.dart';
import 'package:hacom_app_test/app/domain/models/vehicles/vehicle_response.dart';

class VehicleProvider {
  VehicleProvider({required DioHttpProvider dioHttpProvider})
    : _dioHttpProvider = dioHttpProvider;

  final DioHttpProvider _dioHttpProvider;

  FutureEither<Failure, DataResponse> getAll() async {
    return await _dioHttpProvider.get(
      '/vehicles?accountId=1',
      converter: (json) => DataResponse<List<VehicleResponse>>.fromJson(
        json as Map<String, dynamic>,
        (dataJson) => (dataJson as List<dynamic>)
            .map((e) => VehicleResponse.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
    );
  }
}
