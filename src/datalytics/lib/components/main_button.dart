import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String title;
  final Color? textColor;
  final Color? buttonColor;
  final double borderRadius;
  final double? height;
  final double? width;
  final VoidCallback? onPress;
  const MainButton({
    required this.title,
    this.textColor,
    this.buttonColor,
    this.borderRadius = 20,
    this.height,
    this.width,
    this.onPress,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: textColor,
            ),
          ),
        )
      ),
    );
  }
}