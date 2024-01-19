import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Video extends StatelessWidget {
  final VideoPlayerController controller;

  const Video({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.of(context).size;

    return Container(
      width: width,
      height: width * 9 / 16,
      color: Colors.grey,
    );

    controller.value.isInitialized
        ? AspectRatio(
            aspectRatio: controller.value.aspectRatio,
            child: VideoPlayer(controller),
          )
        : const CircularProgressIndicator();
  }
}
