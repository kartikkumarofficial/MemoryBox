// main.dart
import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Memory Box',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          headlineLarge: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          titleMedium: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
      ),
      home: const Homepage(),
    );
  }
}
