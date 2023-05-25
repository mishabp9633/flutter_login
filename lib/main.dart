import 'package:flutter/material.dart';
import 'package:flutter_login/screens/splash.dart';

const SAVE_KEY_NAME = 'UserLoggedIn';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Sample',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: ScreenSplash(),
    );
  }
}