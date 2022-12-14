import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_todo_ui/styles/app_colors.dart';
import 'package:flutter_todo_ui/ui/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home: Splash(),
    );
  }
}
