import 'dart:async';

import 'package:flutter/material.dart';
import 'package:reddit_task/core/state/async_state.dart';

extension AsyncStateX<T> on AsyncState<T> {
  AsyncState<R> whenSuccess<R>(R Function(T) mapper) {
    return when(
      initial: () => const AsyncState.initial(),
      success: (data) => AsyncState.success(mapper(data)),
      loading: () => const AsyncState.loading(),
      error: (errorMessage) => AsyncState.error(errorMessage),
    );
  }

  AsyncState<T> whenError<R>(String Function(String errorMessage) mapper) {
    return when(
      initial: () => const AsyncState.initial(),
      success: (data) => AsyncState.success(data),
      loading: () => const AsyncState.loading(),
      error: (errorMessage) {
        mapper(errorMessage);
        return AsyncState.error(errorMessage);
      },
    );
  }
}

extension FutureAsyncStateX<T> on Future<AsyncState<T>> {
  Future<AsyncState<T>> onSuccess(FutureOr<void> Function() onSuccess) async {
    final state = await this;
    if (state.isSuccess) {
      final data = await onSuccess();
      AsyncState.success(data);
    }
    return state;
  }

  Future<AsyncState<T>> onError(
    FutureOr<void> Function() onError,
  ) async {
    final state = await this;
    if (state.isError) {
      await onError();
    }
    return state;
  }

  Future<AsyncState<T>> showSnackBarIfError(BuildContext context) async {
    final state = await this;

    state.whenOrNull(
      error: (errorMessage) {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(errorMessage)),
        );
      },
    );

    return this;
  }
}
