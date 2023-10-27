import 'package:datalytics/components/gradient_background.dart';
import 'package:datalytics/components/header.dart';
import 'package:datalytics/components/main_button.dart';
import 'package:datalytics/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          const GradientBackground(),
          Column(
            children: [
              const Header(),
              const SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: size.width / 4,
                              child: const Text(
                                '''Encontre um consultor adequado para ajudar a sua empresa na gestão de dados.''',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                                style: TextStyle(
                                  color: dtlWhite,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            const SizedBox(height: 12,),
                            const MainButton(
                              title: 'Encontrar',
                              buttonColor: dtlGreyBlue,
                              textColor: dtlWhite,
                              borderRadius: 8,
                              width: 120,
                              height: 40,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}
