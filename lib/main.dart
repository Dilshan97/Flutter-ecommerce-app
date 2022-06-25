import 'package:flutter/material.dart';
import 'package:keels/theme.dart';
import 'package:keels/views/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Keells',
      theme: theme(),
      home: const Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}

