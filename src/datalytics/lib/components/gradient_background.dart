import 'package:datalytics/constants.dart';
import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  const GradientBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            dtlBrow200,
            dtlBrownBlue800,
          ],
          begin: FractionalOffset(0.0, 1.0),
          end: FractionalOffset(1.0, 0),
          stops: [0, 1],
          tileMode: TileMode.clamp
        ),
      ),
    );
  }
}