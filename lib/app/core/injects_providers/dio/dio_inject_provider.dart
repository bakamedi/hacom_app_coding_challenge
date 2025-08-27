import 'package:flutter_meedu/providers.dart';

import '../../../data/source/providers/dio/dio_http_provider.dart';
import '../../instances/dio/dio_instance.dart';

class DioInjectProvider {
  DioInjectProvider._();

  static final dioProvider = Provider(
    (ref) => DioHttpProvider(dio: DioInstance.dio),
  );
}
