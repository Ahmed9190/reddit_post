import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:reddit_task/core/widgets/gap.dart';
import 'package:reddit_task/features/post/presentation/widgets/user_avatar.dart';

class PostTitle extends StatelessWidget {
  final String title;
  final String imageUrl;

  const PostTitle({
    Key? key,
    required this.title,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Gap.row(
      space: 5.0,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        UserAvatar(imageUrl),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
