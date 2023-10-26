import 'package:datalytics/components/main_button.dart';
import 'package:datalytics/constants.dart';
import 'package:flutter/material.dart';

class LabeledButton extends StatelessWidget {
  final MainButton button;
  final String labelText;
  final double fontSize;
  final FontWeight fontWeight;
  const LabeledButton({
    required this.button,
    required this.labelText,
    this.fontSize = 12,
    this.fontWeight = FontWeight.normal,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(
            color: dtlWhite,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
        button,
      ],
    );
  }
}