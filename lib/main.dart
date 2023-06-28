import 'package:flutter/material.dart';
import 'package:toss_practice/toss_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            overlayColor: MaterialStateColor.resolveWith(
              (states) => const Color.fromARGB(118, 244, 243, 244),
            ),
          ),
        ),
      ),
      home: const TossApp(),
    );
  }
}
