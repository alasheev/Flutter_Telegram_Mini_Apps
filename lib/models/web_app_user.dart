import 'package:flutter_telegram_mini_app/js_interop.dart';

class WebAppUser {
  final String username;

  const WebAppUser({required this.username});

  factory WebAppUser.fromJs(WebAppUserJs jsObject) {
    return WebAppUser(username: jsObject.username);
  }
}
