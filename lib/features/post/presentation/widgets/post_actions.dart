import 'package:flutter/material.dart';

import 'package:reddit_task/core/enums/vote_state.dart';
import 'package:reddit_task/core/widgets/gap.dart';
import 'package:reddit_task/core/widgets/svg_icon.dart';
import 'package:reddit_task/core/widgets/svg_icon_button.dart';

class PostActions extends StatelessWidget {
  final VoidCallback onPressedUpvote;
  final VoidCallback onPressedDownvote;
  final VoidCallback onPressedComment;
  final VoidCallback onPressedShare;
  final VoteState voteState;
  final int votesCount;
  final int commentsCount;

  const PostActions({
    Key? key,
    required this.onPressedUpvote,
    required this.onPressedDownvote,
    required this.onPressedComment,
    required this.onPressedShare,
    required this.voteState,
    required this.votesCount,
    required this.commentsCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Gap(
      mainAxisSize: MainAxisSize.min,
      space: 30.0,
      children: [
        Gap(
          space: 5.0,
          mainAxisSize: MainAxisSize.min,
          children: [
            _VoteButton(
              inactiveIcon: SvgIcons.upOutlined,
              activeIcon: SvgIcons.upFilled,
              inActiveColor: Colors.white,
              activeColor: Colors.red.shade700,
              isActive: voteState == VoteState.upvote,
              onPressed: onPressedUpvote,
            ),
            Text(
              "$votesCount",
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            _VoteButton(
              inactiveIcon: SvgIcons.downOutlined,
              activeIcon: SvgIcons.downFilled,
              inActiveColor: Colors.white,
              activeColor: Colors.purple.shade200,
              isActive: voteState == VoteState.downvote,
              onPressed: onPressedDownvote,
            ),
          ],
        ),
        Gap(
          space: 5.0,
          children: [
            SvgIconButton(
              onPressed: onPressedComment,
              icon: SvgIcons.commentOutlined,
              color: Colors.white,
            ),
            Text(
              "$commentsCount",
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        SvgIconButton(
          onPressed: onPressedShare,
          icon: SvgIcons.share,
          color: Colors.white,
        ),
      ],
    );
  }
}

class _VoteButton extends StatelessWidget {
  final SvgIconData inactiveIcon;
  final SvgIconData activeIcon;
  final Color inActiveColor;
  final Color activeColor;
  final bool isActive;
  final VoidCallback onPressed;

  const _VoteButton({
    Key? key,
    required this.inactiveIcon,
    required this.activeIcon,
    required this.inActiveColor,
    required this.activeColor,
    required this.isActive,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgIconButton(
      onPressed: onPressed,
      icon: isActive ? activeIcon : inactiveIcon,
      color: isActive ? activeColor : inActiveColor,
    );
  }
}
