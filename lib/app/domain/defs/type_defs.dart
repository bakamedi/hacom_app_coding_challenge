import 'package:hacom_app_test/app/core/network/either.dart';

typedef Json = Map<String, dynamic>;
typedef FutureEither<L, R> = Future<Either<L, R>>;
