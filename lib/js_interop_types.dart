// JS-interop предоставляет механизмы взаимодействия с JavaScript API из Dart.
// При взаимодействии со значением JS необходимо указать тип Dart. 
// Это можно сделать, используя или объявив тип взаимодействия.
// Для ясности мы будем определять типы взаимодействия с суффиксом Js:

//https://core.telegram.org/bots/webapps#initializing-mini-apps
import 'dart:js_interop';

extension type WebAppJs(JSObject _) implements JSObject {
  external WebAppInitDataJs initDataUnsafe;
  external ThemeParamsJs themeParams;
}

//https://core.telegram.org/bots/webapps#webappinitdata
extension type WebAppInitDataJs(JSObject _) implements JSObject {
  external WebAppUserJs user;
}

//https://core.telegram.org/bots/webapps#themeparams
extension type ThemeParamsJs._(JSObject _) implements JSObject {
  external String bg_color; //#RRGGBB format
  external String text_color;
  external String button_color;
}

//https://core.telegram.org/bots/webapps#webappuser
extension type WebAppUserJs._(JSObject _) implements JSObject {
  external String username;
}