import 'package:datalytics/constants.dart';
import 'package:flutter/material.dart';

class WelcomeCommomParagraph extends StatelessWidget {
  final String content;
  const WelcomeCommomParagraph({required this.content, super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.6,
      child: Text(
        content,
        textAlign: TextAlign.justify,
        style: const TextStyle(
          color: dtlBlack,
          fontWeight: FontWeight.normal,
          fontSize: 16,
        ),
      ),
    );
  }
}