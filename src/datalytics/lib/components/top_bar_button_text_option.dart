import 'package:datalytics/constants.dart';
import 'package:flutter/material.dart';

class TopBarButtonTextOption extends StatelessWidget {
  final String title;
  final VoidCallback? onPress;
  const TopBarButtonTextOption({
    required this.title,
    this.onPress,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      child: Text(
        title,
        style: const TextStyle(
          color: dtlGreyBlue,
          fontSize: 16,
          fontWeight: FontWeight.w200,
        ),
      ),
    );
  }
}