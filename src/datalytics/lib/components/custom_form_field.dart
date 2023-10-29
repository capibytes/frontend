import 'package:datalytics/constants.dart';
import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final String labelText;
  final bool hideText;
  final Widget? suffix;
  final String? Function(String?)? validate;
  const CustomFormField({
    required this.labelText,
    this.validate,
    this.hideText = false,
    this.suffix,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: (size.width / 4) - 60,
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