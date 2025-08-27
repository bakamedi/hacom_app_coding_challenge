import 'package:hacom_app_test/app/core/network/either.dart';
import 'package:hacom_app_test/app/core/network/handle_failure.dart';
import 'package:hacom_app_test/app/core/utils/failure_view_data.dart';
import 'package:hacom_app_test/app/domain/defs/type_defs.dart';
import 'package:hacom_app_test/app/domain/models/vehicles/vehicle_response.dart';
import 'package:hacom_app_test/app/domain/repositories/index_repositories.dart';

class GetVehiclesUseCase {
  GetVehiclesUseCase({required VehicleRepository vehicleRepository})
    : _vehicleRepository = vehicleRepository;
  final VehicleRepository _vehicleRepository;

  FutureEither<FailureViewData, List<VehicleResponse>> call() async {
    final result = await _vehicleRepository.getAll();
    return result.fold((failure) => Left(mapFailureToView(failure)), (
      response,
    ) {
      return Right(response);
    });
  }
}
