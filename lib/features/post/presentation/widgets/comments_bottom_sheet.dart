import 'package:flutter/material.dart';
import 'package:interactive_bottom_sheet/interactive_bottom_sheet.dart';

import 'package:reddit_task/core/theme/theme_provider.dart';

class CommentsBottomSheet extends StatelessWidget {
  final double height;

  const CommentsBottomSheet({
    Key? key,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = ThemeProvider.of(context);

    return InteractiveBottomSheet(
      draggableAreaOptions: DraggableAreaOptions(
        backgroundColor: theme.color.bottomSheetBackground,
        indicatorColor: theme.color.bottomSheetIndicator,
        topBorderRadius: theme.borderRadius.medium,
        indicatorWidth: 32.5,
        indicatorHeight: 4.0,
        height: 35.0,
        shadows: [],
      ),
      options: InteractiveBottomSheetOptions(
        backgroundColor: theme.color.bottomSheetBackground,
        snap: false,
      ),
      child: SizedBox(
        height: height,
        child: const Text(
          'Lorem ipsum dolor sit amet.',
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}
