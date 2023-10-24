import 'package:datalytics/constants.dart';
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
          SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          child: Image.asset(
                            'assets/images/complete-logo.png',
                          ),
                        ),
                        const SizedBox(height: 20,),
                        SizedBox(
                          width: size.width / 3,
                          child: const Text(
                            '''Somos uma plataforma onde você pode adquirir mais conhecimento sobre a gestão de dados da sua empresa.''',
                            style: TextStyle(
                              color: dtlWhite,
                              fontSize: 26,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}