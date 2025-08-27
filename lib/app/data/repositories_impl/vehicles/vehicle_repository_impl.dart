import 'package:hacom_app_test/app/core/network/either.dart';
import 'package:hacom_app_test/app/core/network/failure.dart';
import 'package:hacom_app_test/app/data/source/api/vehicles/vehicle_provider.dart';
import 'package:hacom_app_test/app/domain/defs/type_defs.dart';
import 'package:hacom_app_test/app/domain/models/vehicles/vehicle_response.dart';
import 'package:hacom_app_test/app/domain/repositories/vehicle/vehicle_repository.dart';

class VehicleRepositoryImpl extends VehicleRepository {
  VehicleRepositoryImpl({required VehicleProvider vehicleProvider})
    : _vehicleProvider = vehicleProvider;

  final VehicleProvider _vehicleProvider;

  @override
  FutureEither<Failure, List<VehicleResponse>> getAll() async {
    final result = await _vehicleProvider.getAll();
    return result.fold((failure) => Left(failure), (dataResponse) {
      final List<VehicleResponse> vehicles = dataResponse.data;
      return Right(vehicles);
    });
  }
}
