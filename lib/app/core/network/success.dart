sealed class Result<T> {
  const Result();
}

final class Success<T> extends Result<T> {
  const Success({this.data, this.message});

  final T? data;
  final String? message;
}
