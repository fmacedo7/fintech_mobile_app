import 'package:fintech_mobile_app/ui/screens/homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Spartan',
      ),
      home: const HomeScreen(),
      routes: {
        '/homescreen': (context) => const HomeScreen(),
      },
    );
  }
}
