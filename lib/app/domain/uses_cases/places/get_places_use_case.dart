import 'package:hacom_app_test/app/core/network/either.dart';
import 'package:hacom_app_test/app/core/network/handle_failure.dart';
import 'package:hacom_app_test/app/core/utils/failure_view_data.dart';
import 'package:hacom_app_test/app/domain/defs/type_defs.dart';
import 'package:hacom_app_test/app/domain/models/places/place_response.dart';
import 'package:hacom_app_test/app/domain/repositories/place/place_repository.dart';

class GetPlacesUseCase {
  GetPlacesUseCase({required PlaceRepository placeRepository})
    : _placeRepository = placeRepository;
  final PlaceRepository _placeRepository;

  FutureEither<FailureViewData, List<PlaceResponse>> call() async {
    final result = await _placeRepository.getAll();
    return result.fold((failure) => Left(mapFailureToView(failure)), (
      response,
    ) {
      return Right(response);
    });
  }
}
