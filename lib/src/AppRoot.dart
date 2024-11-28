import 'package:flutter/material.dart';
import 'package:untitled2/screens/FirstScreen.dart';
class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:FirstScreen(),);
  }
}
