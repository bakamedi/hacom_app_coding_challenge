import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_response.freezed.dart';
part 'data_response.g.dart';

@Freezed(
  genericArgumentFactories: true,
) // Habilita la generación de factorías para argumentos genéricos
abstract class DataResponse<T> with _$DataResponse<T> {
  const factory DataResponse({required T data}) = _DataResponse;

  factory DataResponse.fromJson(
    Map<String, Object?> json,
    T Function(Object?) jsonConverter,
  ) => _$DataResponseFromJson<T>(json, jsonConverter);
}
