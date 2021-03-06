import 'package:flutter/material.dart';
import 'package:liquid_swipe_animation/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Liquid Swipe Animation',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const SplashScreen());
}
