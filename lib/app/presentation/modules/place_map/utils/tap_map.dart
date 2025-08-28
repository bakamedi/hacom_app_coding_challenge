import 'package:hacom_app_test/app/domain/models/places/place_response.dart';
import 'package:hacom_app_test/app/presentation/global/utils/router_util.dart';
import 'package:hacom_app_test/app/presentation/modules/place_map/controller/place_map_provider.dart';
import 'package:hacom_app_test/app/presentation/router/app_routes/place_map_route.dart';

void tapMap(PlaceResponse place) {
  final placeMapController = placeMapProvider.read();
  placeMapController.onChangePlace(place: place);
  RouterUtil.push(PlaceMapRoute.path);
}
