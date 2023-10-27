import 'package:datalytics/components/gradient_background.dart';
import 'package:datalytics/components/header.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          GradientBackground(),
          Column(
            children: [
              Header(),
            ],
          ),
        ],
      )
    );
  }
}
