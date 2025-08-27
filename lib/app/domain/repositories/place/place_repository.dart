
import 'package:hacom_app_test/app/core/network/either.dart';
import 'package:hacom_app_test/app/core/network/failure.dart';
import 'package:hacom_app_test/app/domain/models/places/place_response.dart';

abstract class PlaceRepository {
  Future<Either<Failure, List<PlaceResponse>>> getAll();
}
