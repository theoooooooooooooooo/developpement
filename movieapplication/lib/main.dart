import 'package:flutter/material.dart';
import 'package:movieapplication/views/DynamiqueHome.dart';
import 'package:movieapplication/views/Home.dart';
import 'package:movieapplication/views/test.dart';

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
      // home: HomePage(),
      home: TestPage(),
    );
  }
}

