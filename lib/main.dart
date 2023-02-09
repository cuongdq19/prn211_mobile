import 'package:flutter/material.dart';
import 'package:halo_smoothie/home_screen.dart';
import 'package:halo_smoothie/login_creen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halo Smoothie',
      theme: ThemeData(
          //primarySwatch: Colors.blue,
          ),
      home: LoginPage(),
    );
  }
}
