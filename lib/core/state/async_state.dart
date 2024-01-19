import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reddit_task/core/typedefs.dart';

part 'async_state.freezed.dart';

@freezed
class AsyncState<T> with _$AsyncState<T> {
  const AsyncState._();

  const factory AsyncState.initial() = _AsyncStateInitial;
  const factory AsyncState.loading() = _AsyncStateLoading;
  const factory AsyncState.success(T data) = _AsyncStateSuccess<T>;
  const factory AsyncState.error(ApiError error) = _AsyncStateError;

  factory AsyncState.fromEither(ApiResult<T> either) => either.fold(
        (error) => AsyncState.error(error),
        (data) => AsyncState.success(data),
      );

  bool get isInitial => maybeWhen(initial: () => true, orElse: () => false);
  bool get isLoading => maybeWhen(loading: () => true, orElse: () => false);
  bool get isSuccess => maybeWhen(success: (_) => true, orElse: () => false);
  bool get isError => maybeWhen(error: (_) => true, orElse: () => false);
}
