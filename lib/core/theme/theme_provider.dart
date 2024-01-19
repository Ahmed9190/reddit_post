import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reddit_task/core/theme/theme.dart';

export 'theme.dart';

class ThemeProvider extends ChangeNotifier {
  static MainTheme of(BuildContext context) =>
      context.watch<ThemeNotifier>().theme;
  static MainTheme ofRead(BuildContext context) =>
      context.read<ThemeNotifier>().theme;
}
