import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/background-img.png',
            fit: BoxFit.fill,
            height: size.height,
            width: size.width,
          ),
        ],
      ),
    );
  }
}