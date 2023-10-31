import 'package:datalytics/dimensions.dart';
import 'package:datalytics/screens/welcome/responsive/welcome_desktop_body.dart';
import 'package:datalytics/screens/welcome/responsive/welcome_mobile_body.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidth){
          return const WelcomeMobileBody();
        } else {
          return const WelcomeDesktopBody();
        }
      }
    );
  }
}