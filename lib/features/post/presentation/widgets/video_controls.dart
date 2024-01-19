import 'package:flutter/material.dart';
import 'package:reddit_task/core/extensions/duration_ext.dart';
import 'package:reddit_task/core/widgets/svg_icon.dart';
import 'package:reddit_task/core/widgets/svg_icon_button.dart';

class VideoControls extends StatelessWidget {
  final bool isPlaying;
  final bool isMuted;
  final Duration position;
  final Duration duration;
  final VoidCallback onPlayPause;
  final VoidCallback onMuteUnmute;
  final ValueChanged<Duration> onSeek;

  const VideoControls({
    Key? key,
    required this.isPlaying,
    required this.isMuted,
    required this.position,
    required this.onPlayPause,
    required this.onMuteUnmute,
    required this.onSeek,
    required this.duration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black26,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgIconButton(
            onPressed: onPlayPause,
            icon: isPlaying ? SvgIcons.pause : SvgIcons.play,
            color: Colors.white,
            size: 20.0,
          ),
          Expanded(
            child: SliderTheme(
              data: const SliderThemeData(trackHeight: 1.5),
              child: Slider(
                value: position.inSeconds.toDouble(),
                min: 0.0,
                max: duration.inSeconds.toDouble(),
                thumbColor: Colors.white,
                inactiveColor: Colors.white.withOpacity(0.18),
                activeColor: Colors.white70,
                onChanged: (value) {
                  onSeek(Duration(seconds: value.toInt()));
                },
              ),
            ),
          ),
          Text(
            position.inMMSS,
            style: const TextStyle(color: Colors.white, letterSpacing: 2.0),
          ),
          const SizedBox(width: 20.0),
          SvgIconButton(
            onPressed: onMuteUnmute,
            icon: isMuted ? SvgIcons.muted : SvgIcons.unmuted,
            color: Colors.white,
            size: 20.0,
          ),
        ],
      ),
    );
  }
}
