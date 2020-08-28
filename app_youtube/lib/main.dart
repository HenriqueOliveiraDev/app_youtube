import 'package:app_youtube/src/view/home.dart';
import 'package:app_youtube/src/view/theme/dark_theme.dart';
import 'package:app_youtube/src/view/theme/light_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluttuber',
      theme: (true) ? lightThemeData : darkTheme,
      home: Home(),
    );
  }
}
