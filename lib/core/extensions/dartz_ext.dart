import 'package:dartz/dartz.dart';
import 'package:reddit_task/core/typedefs.dart';

extension EitherX<T> on Either<ApiError, T> {
  ApiResult<X> mapRight<X>(X Function(T) rightMapper) {
    return fold(
      (failure) => left(failure),
      (data) => right(rightMapper(data)),
    );
  }

  B? handleRight<B>(B Function(T) ifRight) => fold((l) => null, ifRight);

  B? handleLeft<B>(B Function(ApiError) ifLeft) => fold(ifLeft, (r) => null);
}

extension OptionX<T> on Option<T> {
  void handleSome(void Function(T) callback) {
    foldRight(null, (someValue, previous) {
      callback(someValue);
    });
  }
}
