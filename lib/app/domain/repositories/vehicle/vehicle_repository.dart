import 'package:hacom_app_test/app/core/network/failure.dart';
import 'package:hacom_app_test/app/domain/defs/type_defs.dart';
import 'package:hacom_app_test/app/domain/models/vehicles/vehicle_response.dart';

abstract class VehicleRepository {
  FutureEither<Failure, List<VehicleResponse>> getAll();
}
