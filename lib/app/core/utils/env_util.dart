import 'package:flutter_dotenv/flutter_dotenv.dart';

/// Clas para obtener desde el .env sus atributos
abstract class EnvUtil {
  EnvUtil._();
  static String get baseUrl => dotenv.get('BASE_URL');
}
