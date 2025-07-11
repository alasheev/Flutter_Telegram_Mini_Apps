import 'dart:ui';

import 'package:flutter_telegram_mini_app/js_interop.dart';

class ThemeParams {
  final Color bgColor;
  final Color textColor;
  final Color buttonColor;

  const ThemeParams({
    required this.bgColor,
    required this.textColor,
    required this.buttonColor,
  });

  factory ThemeParams.fromJs(ThemeParamsJs jsObject) {
    return ThemeParams(
      bgColor: _parseColor(jsObject.bg_color),
      textColor: _parseColor(jsObject.text_color),
      buttonColor: _parseColor(jsObject.button_color),
    );
  }
}

Color _parseColor(String rrggbb) {
  return Color(int.parse(rrggbb.replaceFirst('#', "0xff")));
}
