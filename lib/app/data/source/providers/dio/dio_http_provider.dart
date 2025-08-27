// data/adapters/dio_http_adapter.dart

import 'package:dio/dio.dart';

import '../../../../core/network/either.dart';
import '../../../../core/network/failure.dart';
import '../../../../core/network/http_client.dart';

class DioHttpProvider implements HttpClientRepository {
  DioHttpProvider({required Dio dio}) : _dio = dio;
  final Dio _dio;

  @override
  Future<Either<Failure, T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    T Function(dynamic)? converter,
  }) async {
    try {
      final res = await _dio.get(path, queryParameters: queryParameters);
      final data = converter != null ? converter(res.data) : res.data;
      return Right(data);
    } catch (e) {
      return Left(_mapError(e));
    }
  }

  @override
  Future<Either<Failure, T>> post<T>(
    String path, {
    dynamic body,
    T Function(dynamic)? converter,
  }) async {
    try {
      final res = await _dio.post(path, data: body);
      final data = converter != null ? converter(res.data) : res.data;
      return Right(data);
    } catch (e) {
      return Left(_mapError(e));
    }
  }

  Failure _mapError(Object e) {
    if (e is DioException) {
      final statusCode = e.response?.statusCode;

      switch (e.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.sendTimeout:
          return const TimeoutFailure();

        case DioExceptionType.badResponse:
          if (statusCode == 401 || statusCode == 403) {
            return const AuthFailure('No autorizado');
          } else if (statusCode == 422) {
            return const ValidationFailure('Datos inválidos');
          } else if (statusCode == 404) {
            return const ApiFailure('Recurso no encontrado', statusCode: 404);
          } else if (statusCode != null && statusCode >= 500) {
            return ApiFailure('Error del servidor', statusCode: statusCode);
          } else {
            return ApiFailure(
              'Error inesperado de la API',
              statusCode: statusCode,
            );
          }

        case DioExceptionType.cancel:
          return const NetworkFailure('Solicitud cancelada por el usuario');

        case DioExceptionType.connectionError:
        case DioExceptionType.unknown:
          return NetworkFailure(
            e.message ?? 'Error de conexión desconocido',
            statusCode: statusCode,
          );

        case DioExceptionType.badCertificate:
          return const NetworkFailure('Problema con el certificado SSL');
      }
    }

    return UnknownFailure(e.toString());
  }
}
