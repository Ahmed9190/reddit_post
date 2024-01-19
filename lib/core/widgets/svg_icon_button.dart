import 'package:flutter/material.dart';
import 'package:reddit_task/core/widgets/svg_icon.dart';

class SvgIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final SvgIconData icon;
  final Color color;
  final double size;

  const SvgIconButton({
    Key? key,
    required this.onPressed,
    required this.icon,
    required this.color,
    this.size = 22.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: SvgIcon(
        icon,
        color: color,
        size: size,
      ),
    );
  }
}
