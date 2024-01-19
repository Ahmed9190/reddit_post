import 'package:dartz/dartz.dart';

typedef ApiError = String;

typedef ApiResult<T> = Either<ApiError, T>;
typedef FutureApiResult<T> = Future<ApiResult<T>>;
typedef FutureVoidApiResult = Future<ApiResult<Unit>>;
