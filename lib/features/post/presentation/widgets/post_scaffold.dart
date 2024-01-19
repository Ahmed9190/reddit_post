import 'package:flutter/material.dart';
import 'package:interactive_bottom_sheet/interactive_bottom_sheet.dart';
import 'package:reddit_task/core/theme/theme_provider.dart';

import 'package:reddit_task/core/widgets/gap.dart';

class PostScaffold extends StatelessWidget {
  final Widget title;
  final Widget threeDotsMenu;
  final Widget video;
  final Widget userInfo;
  final Widget caption;
  final Widget postActions;
  final Widget videoControls;
  final Widget commentsBottomSheet;
  final bool isCommentsBottomSheetVisible;

  const PostScaffold({
    Key? key,
    required this.title,
    required this.threeDotsMenu,
    required this.video,
    required this.userInfo,
    required this.caption,
    required this.postActions,
    required this.videoControls,
    required this.isCommentsBottomSheetVisible,
    required this.commentsBottomSheet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size(width: screenWidth, height: screenHeight) =
        MediaQuery.of(context).size;

    final theme = ThemeProvider.of(context);
    final backgroundColor = theme.color.scaffoldBackground;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: isCommentsBottomSheetVisible
            ? video
            : Stack(
                children: [
                  AppBar(
                    title: title,
                    centerTitle: true,
                    backgroundColor: backgroundColor,
                    actions: [threeDotsMenu],
                  ),
                  Center(child: video),
                  Positioned.fill(
                    bottom: 0.0,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: theme.padding.screen),
                      child: Gap(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IntrinsicHeight(
                            child: Gap.row(
                              space: 80.0,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Gap(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      userInfo,
                                      // ignore: sized_box_for_whitespace
                                      Container(
                                          width: double.infinity,
                                          child: caption),
                                    ],
                                  ),
                                ),
                                postActions,
                              ],
                            ),
                          ),
                          videoControls,
                        ],
                      ),
                    ),
                  ),
                ],
              ),
      ),
      bottomSheet: isCommentsBottomSheetVisible ? commentsBottomSheet : null,
    );
  }
}

// TODO: remove this widget it's just for testing
class BorderContainer extends StatelessWidget {
  final Widget child;

  const BorderContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.white)),
      child: child,
    );
  }
}
