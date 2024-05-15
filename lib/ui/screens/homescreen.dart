import 'package:fintech_mobile_app/ui/components/button_icon.dart';
import 'package:flutter/material.dart';

import '../constants/button_icon_background_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    CustomIconButton(
                      icon: const Icon(Icons.arrow_back_ios_new_outlined),
                      backgroundColor: customButtonBackgroundColor,
                      padding: 10,
                      iconSize: 18,
                      onPressed: (){},
                    ),
                    CustomIconButton(
                      icon: const Icon(Icons.wallet),
                      backgroundColor: customButtonBackgroundColor,
                      minimumSize: const Size(75, 50),
                      onPressed: (){},
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
