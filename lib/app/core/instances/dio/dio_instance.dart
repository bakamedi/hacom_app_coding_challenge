import 'package:dio/dio.dart';
import 'package:hacom_app_test/app/core/utils/env_util.dart';

const _httpTimeout = Duration(seconds: 30);

class DioInstance {
  DioInstance._();

  static final dio = Dio(
    BaseOptions(
      baseUrl: EnvUtil.baseUrl,
      connectTimeout: _httpTimeout,
      receiveTimeout: _httpTimeout,
      sendTimeout: _httpTimeout,
    ),
  );
}
