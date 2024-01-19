import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgIcons {
  static const SvgIconData commentFilled = SvgIconPath('assets/icons/SVG/comment_filled.svg');
  static const SvgIconData commentOutlined = SvgIconPath('assets/icons/SVG/comment_outlined.svg');
  static const SvgIconData image = SvgIconPath('assets/icons/SVG/image.svg');
  static const SvgIconData muted = SvgIconPath('assets/icons/SVG/muted.svg');
  static const SvgIconData pause = SvgIconPath('assets/icons/SVG/pause.svg');
  static const SvgIconData play = SvgIconPath('assets/icons/SVG/play.svg');
  static const SvgIconData reply = SvgIconPath('assets/icons/SVG/reply.svg');
  static const SvgIconData share = SvgIconPath('assets/icons/SVG/share.svg');
  static const SvgIconData unmuted = SvgIconPath('assets/icons/SVG/unmuted.svg');
  static const SvgIconData upFilled = SvgIconPath('assets/icons/SVG/up_filled.svg');
  static const SvgIconData upOutlined = SvgIconPath('assets/icons/SVG/up_outlined.svg');
  static const SvgIconData downFilled = SvgIconPath('assets/icons/SVG/down_filled.svg');
  static const SvgIconData downOutlined = SvgIconPath('assets/icons/SVG/down_outlined.svg');

  static material(IconData icon) => SvgIconMaterial(icon);
}

class SvgIconData {
  const SvgIconData();
}

class SvgIconPath extends SvgIconData {
  final String path;
  final bool isColored;
  const SvgIconPath(this.path, {this.isColored = false});
}

class SvgIconMaterial extends SvgIconData {
  final IconData icon;
  const SvgIconMaterial(this.icon);
}

class SvgIcon extends StatelessWidget {
  final SvgIconData data;
  final double size;
  final Color? color;

  const SvgIcon(
    this.data, {
    this.size = 25.0,
    this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = this.data;
    if (data is SvgIconMaterial) {
      return Icon(
        data.icon,
        size: size,
        color: color,
      );
    } else if (data is SvgIconPath) {
      ColorFilter? colorFilter;
      if (color != null && !data.isColored) {
        colorFilter = ColorFilter.mode(color!, BlendMode.srcIn);
      }
      return SvgPicture.asset(
        data.path,
        width: size,
        height: size,
        colorFilter: colorFilter,
      );
    } else {
      throw Exception('[SvgIcon] ${data.runtimeType} is not supported yet.');
    }
  }
}
