import 'package:flutter/material.dart';
import 'package:plant_disease_detection/screens/contact_us_screen.dart';
import 'package:plant_disease_detection/screens/login_screen.dart';
import 'package:plant_disease_detection/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant Disease Detection',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

