import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class ThemeNotifier extends ChangeNotifier {
  MainTheme _theme = MainTheme();
  MainTheme get theme => _theme;
  set theme(MainTheme value) {
    _theme = value;
    notifyListeners();
  }
}

class MainTheme {
  Color get primaryColor => color.primary;

  final color = CustomColor();
  final borderRadius = const CustomBorderRadius();

  final padding = const CustomPadding();
}

class CustomColor {
  CustomColor();

  final Color primary = Colors.deepOrange;
  final Color red = const Color(0xffe3370d);
  final Color purple = const Color(0xff96afed);

  final Color scaffoldBackground = const Color(0xff020002);
  final Color bottomSheetBackground = const Color(0xff141215);
  final Color bottomSheetIndicator = const Color(0xff272528);
}

class CustomBorderRadius {
  const CustomBorderRadius();

  final double small = 15.0;
  final double medium = 20.0;
  final double large = 25.0;
}

class CustomPadding {
  const CustomPadding();

  final double small = 5.0;
  final double medium = 10.0;
  final double large = 15.0;
  final double xLarge = 20.0;
  final double xxLarge = 25.0;
  final double xxxLarge = 30.0;
  final double xxxxLarge = 40.0;

  final double screen = 15.0;
}
