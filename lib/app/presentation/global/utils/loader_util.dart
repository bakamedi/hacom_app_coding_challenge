import 'package:hacom_app_test/app/presentation/global/controllers/loader/loader_gc.dart';

abstract class LoaderUtil {
  static final _loader = loaderGP.read();

  static void show() {
    _loader.showLoader();
  }

  static void hide() {
    _loader.hideLoader();
  }
}
