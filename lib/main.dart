import 'package:flutter/material.dart';
import 'package:flutter_telegram_mini_app/js_interop.dart'
    as telegram_js;
import 'package:flutter_telegram_mini_app/models/web_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // TODO добавить цвета из темы телеги. Сделать ChangeNotifier для переключения темы
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  WebApp? webApp;
  String? tgName;

  @override
  Widget build(BuildContext context) {
    try {
      webApp = WebApp.fromJs(telegram_js.webApp);
      tgName = webApp!.initDataUnsafe.user.username;
    } on Exception catch (e) {
      print(e.toString());
    }
    return Container(
      color: Colors.blue,
      child: Center(
        child: Text(
          "Telegram username: ${tgName ?? 'unknown'}",
        ),
      ),
    );
  }
}
