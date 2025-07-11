import 'package:flutter_telegram_mini_app/js_interop_types.dart';
import 'package:flutter_telegram_mini_app/models/theme_params.dart';
import 'package:flutter_telegram_mini_app/models/web_app_init_data.dart';

class WebApp {
  final WebAppInitData initDataUnsafe;
  final ThemeParams themeParams;

  const WebApp({required this.initDataUnsafe, required this.themeParams});

  factory WebApp.fromJs(WebAppJs jsObject) {
    return WebApp(
      themeParams: ThemeParams.fromJs(jsObject.themeParams),
      initDataUnsafe: WebAppInitData.fromJs(jsObject.initDataUnsafe),
    );
  }
}