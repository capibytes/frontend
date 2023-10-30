import 'package:datalytics/constants.dart';
import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final String labelText;
  final bool hideText;
  final Widget? suffix;
  final double? width;
  final String? Function(String?)? validate;
  const CustomFormField({
    required this.labelText,
    this.validate,
    this.hideText = false,
    this.suffix,
    this.width,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextFormField(
        validator: validate,
        style: const TextStyle(
          color: dtlWhite,
        ),
        obscureText: hideText,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            gapPadding: 8,
            borderSide: const BorderSide(color: dtlGrey100) 
          ),
          labelText: labelText,
          labelStyle: const TextStyle(
            color: dtlGrey100,
            fontSize: 14,
          ),
          floatingLabelStyle: const TextStyle(
            color: dtlWhite,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          suffix: suffix,
        ),
      ),
    );
  }
}