
import 'package:hacom_app_test/app/core/network/either.dart';
import 'package:hacom_app_test/app/core/network/failure.dart';
import 'package:hacom_app_test/app/data/source/api/places/place_provider.dart';
import 'package:hacom_app_test/app/domain/models/places/place_response.dart';
import 'package:hacom_app_test/app/domain/repositories/place/place_repository.dart';

class PlaceRepositoryImpl implements PlaceRepository {
  PlaceRepositoryImpl({required PlaceProvider placeProvider})
      : _placeProvider = placeProvider;
  final PlaceProvider _placeProvider;

  @override
  Future<Either<Failure, List<PlaceResponse>>> getAll() async {
    final result = await _placeProvider.getAll();
    return result.fold(
      (failure) => Left(failure),
      (response) {
        return Right(response.data as List<PlaceResponse>);
      },
    );
  }
}
