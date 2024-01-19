import 'package:flutter/material.dart';
import 'package:reddit_task/core/widgets/gap.dart';
import 'package:reddit_task/features/post/presentation/widgets/user_avatar.dart';

class UserInfo extends StatelessWidget {
  final String userProfilePicture;
  final String userName;

  const UserInfo({
    super.key,
    required this.userProfilePicture,
    required this.userName,
  });

  @override
  Widget build(BuildContext context) {
    return Gap.row(
      space: 5.0,
      children: [
        UserAvatar(userProfilePicture, radius: 25.0),
        Text(userName, style: const TextStyle(color: Colors.white)),
      ],
    );
  }
}
