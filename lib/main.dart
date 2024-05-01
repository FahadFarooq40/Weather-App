import 'package:flutter/material.dart';
import 'package:weather_view_app/screen/splashScrren.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff001b25),
      ),
      home: const GetStarted(),
    );
  }
}
