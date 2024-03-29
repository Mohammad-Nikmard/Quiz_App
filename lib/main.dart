import 'package:flutter/material.dart';
import 'package:flutter_quiz_application/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "dana"),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(coreectAnswer: 0),
    );
  }
}
