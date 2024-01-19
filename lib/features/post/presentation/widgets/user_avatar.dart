import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final String imageUrl;
  final double radius;

  const UserAvatar(
    this.imageUrl, {
    Key? key,
    this.radius = 20.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: radius,
      child: ClipOval(
        child: CachedNetworkImage(imageUrl: imageUrl),
      ),
    );
  }
}
