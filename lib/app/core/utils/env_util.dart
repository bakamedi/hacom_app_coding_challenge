import 'package:flutter_dotenv/flutter_dotenv.dart';

/// Clas para obtener desde el .env sus atributos
abstract class EnvUtil {
  static String get baseUrl => dotenv.get('BASE_URL');
  static String get amplitudeApiKey => dotenv.get('AMPLITUDE_API_KEY');
  static String get crcSecretKey => dotenv.get('CRC_SECRET_KEY', fallback: '');
  static String get crcSecretKeyResponse =>
      dotenv.get('CRC_SECRET_KEY_RESPONSE', fallback: '');
  static String get subscriptionKey =>
      dotenv.get('SUBSCRIPTION_KEY', fallback: '');

  // Singular
  static String get singularApiKey =>
      dotenv.get('SINGULAR_API_KEY', fallback: '');
  static String get singularSecret =>
      dotenv.get('SINGULAR_SECRET', fallback: '');
}
