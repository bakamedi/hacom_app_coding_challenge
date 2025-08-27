import 'failure.dart';
import 'either.dart'; // tu implementación casera

abstract class HttpClientRepository {
  Future<Either<Failure, T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    T Function(dynamic)? converter,
  });

  Future<Either<Failure, T>> post<T>(
    String path, {
    dynamic body,
    T Function(dynamic)? converter,
  });

  // Puedes agregar put, delete, etc.
}
