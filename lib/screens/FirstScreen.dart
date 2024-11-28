import 'package:flutter/material.dart';

import '../Components/SettingTextField.dart';
import '../Components/SignInTextField.dart';


class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  List<bool> isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F4FF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            SizedBox(height: 80,),

            // Logo Image
            Image.asset(
              "assets/images/book logo.png",
              height: 100,
            ),
            const SizedBox(height: 15),

            // Toggle Buttons for Switching Screens
            ToggleButtons(
              isSelected: isSelected,
              selectedColor: Colors.white,
              fillColor: Color(0xFF0072DD),
              borderColor: Color(0xFF0072DD),
              selectedBorderColor: Color(0xFF0072DD),
              borderRadius: BorderRadius.circular(8),
              children:  [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  child: Text("Sign In"),

                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  child: Text("Setting"),
                ),
              ],
              onPressed: (index) {
                setState(() {
                  for (int i = 0; i < isSelected.length; i++) {
                    isSelected[i] = i == index;
                  }
                });
              },
            ),
            const SizedBox(height: 30),

            // Conditional Widget for Sign-In or Settings Screen
            Expanded(
              child: SingleChildScrollView(
                child: isSelected[0] ? buildSignIn() : buildSettings(),
              ),
            ),

            // Footer Row
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Powered by",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  Text(
                    " AppyInnovate",
                    style: TextStyle(color: Color(0xFF0072DD), fontSize: 15),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Sign-In Form
  Widget buildSignIn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
         const SignInTextField(), // Assuming this widget is implemented
        const SizedBox(height: 15),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff0073dd),
            fixedSize: Size(125, 35),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text(
            "Sign In",
            style: TextStyle(color: Colors.white),
          ),
        ),
        const SizedBox(height: 5),
      ],
    );
  }

  // Settings Form
  Widget buildSettings() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SettingTextField(), // Assuming this widget is implemented
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff0073dd),fixedSize: Size(300, 40),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),

            ),

          ),
          child: const Text(
            "Get Database",
            style: TextStyle(color: Colors.white),

          ),
        ),
        const SizedBox(height: 15),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff0073dd),
    fixedSize: Size(120, 35),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          child: const Text(
            "Save",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}

