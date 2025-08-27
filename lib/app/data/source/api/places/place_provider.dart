
import 'package:hacom_app_test/app/core/network/failure.dart';
import 'package:hacom_app_test/app/data/source/providers/dio/dio_http_provider.dart';
import 'package:hacom_app_test/app/domain/defs/type_defs.dart';
import 'package:hacom_app_test/app/domain/models/data_response/data_response.dart';
import 'package:hacom_app_test/app/domain/models/places/place_response.dart';

class PlaceProvider {
  PlaceProvider({required DioHttpProvider dioHttpProvider})
    : _dioHttpProvider = dioHttpProvider;

  final DioHttpProvider _dioHttpProvider;

  FutureEither<Failure, DataResponse> getAll() async {
    return await _dioHttpProvider.get(
      '/places?accountId=1',
      converter: (json) => DataResponse<List<PlaceResponse>>.fromJson(
        json as Map<String, dynamic>,
        (dataJson) => (dataJson as List<dynamic>)
            .map((e) => PlaceResponse.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
    );
  }
}
