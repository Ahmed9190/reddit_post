import 'dart:async';

import 'package:flutter/material.dart';
import 'package:reddit_task/core/state/async_state.dart';
import 'package:reddit_task/core/theme/theme_provider.dart';
import 'package:reddit_task/core/typedefs.dart';
import 'package:reddit_task/core/widgets/general/error_indicator.dart';

class RenderAsyncState<T> extends StatefulWidget {
  final AsyncState<T> asyncState;
  final String Function(AsyncError error)? errorMessageBuilder;
  final Widget Function(BuildContext context, T successData) successBuilder;
  final Widget Function(BuildContext context, ApiError errorMessage)?
      errorBuilder;
  final VoidCallback? tryAgain;
  final VoidCallback? initiate;
  final void Function(T successData)? onSuccess;

  const RenderAsyncState({
    Key? key,
    required this.asyncState,
    this.errorMessageBuilder,
    this.tryAgain,
    required this.successBuilder,
    this.errorBuilder,
    this.initiate,
    this.onSuccess,
  }) : super(key: key);

  @override
  State<RenderAsyncState<T>> createState() => _RenderAsyncStateState<T>();
}

class _RenderAsyncStateState<T> extends State<RenderAsyncState<T>> {
  @override
  void initState() {
    Future.delayed(Duration.zero, widget.initiate);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = ThemeProvider.of(context);
    final backgroundColor = theme.color.scaffoldBackground;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: widget.asyncState.maybeWhen(
          success: (successData) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              widget.onSuccess?.call(successData);
            });

            return widget.successBuilder(context, successData);
          },
          error: (error) {
            print(error);

            return widget.errorBuilder?.call(context, error) ??
                ErrorIndicator(
                  errorMessage: widget.errorMessageBuilder != null
                      ? error
                      : "Something went wrong!",
                  tryAgain: widget.tryAgain ?? widget.initiate,
                );
          },
          orElse: () => const CircularProgressIndicator(),
        ),
      ),
    );
  }
}
