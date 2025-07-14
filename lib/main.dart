import 'package:flutter/material.dart';
import 'package:flutter_telegram_mini_app/app.dart';
import 'package:flutter_telegram_miniapp/flutter_telegram_miniapp.dart';

void main() {
  try {
    WebApp().init();
    // runApp(MyApp());
    runApp(App());
  } catch (e) {
    print('Error initializing Mini App: $e');
  }
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
  final bool isTelegramSupported = WebApp().isSupported;

  @override
  Widget build(BuildContext context) {
    print(WebApp().toString());
    return Container(
      color: Colors.blue,
      child: Center(
        child: Column(
          children: [
            Text(
              "Telegram support: ${isTelegramSupported ? 'enabled' : 'disabled'}"
            ),
            if (isTelegramSupported)
            Text(
              "Telegram username: ${WebApp().initDataUnsafe.user?.username ?? 'unknown'}",
            ),
          ],
        ),
      ),
    );
  }
}
