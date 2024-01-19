import 'package:flutter/material.dart';
import 'package:reddit_task/core/theme/theme_provider.dart';
import 'package:reddit_task/core/widgets/gap.dart';

class ErrorIndicator extends StatelessWidget {
  final VoidCallback? tryAgain;
  final String errorMessage;

  const ErrorIndicator({
    Key? key,
    this.tryAgain,
    required this.errorMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = ThemeProvider.of(context);
    return Padding(
      padding: EdgeInsets.all(theme.padding.screen),
      child: Gap(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            errorMessage,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          if (tryAgain != null)
            ElevatedButton.icon(
              onPressed: tryAgain,
              label: const Text("Try again"),
              icon: const Icon(Icons.refresh),
            )
        ],
      ),
    );
  }
}
