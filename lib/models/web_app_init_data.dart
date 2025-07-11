import 'package:flutter_telegram_mini_app/js_interop.dart';
import 'package:flutter_telegram_mini_app/models/web_app_user.dart';

class WebAppInitData {
  final WebAppUser user;

  const WebAppInitData({required this.user});

  factory WebAppInitData.fromJs(WebAppInitDataJs jsObject) {
    return WebAppInitData(user: WebAppUser.fromJs(jsObject.user));
  }
}