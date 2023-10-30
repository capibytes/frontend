import 'package:datalytics/components/labeled_button.dart';
import 'package:datalytics/components/main_button.dart';
import 'package:datalytics/constants.dart';
import 'package:flutter/material.dart';

class LogOnScreen extends StatelessWidget {
  const LogOnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double maxWidth = constraints.maxWidth;
        double maxHeight = constraints.maxHeight;

        double widthOfMainContainer = maxWidth < 800 ? maxWidth * 0.8 : 600;
        double heightOfMainContainer = maxHeight < 900 ? maxHeight * 0.7 : 800;

        return Scaffold(
          body: Stack(
            children: [
              Image.asset(
                'assets/images/background-img.png',
                fit: BoxFit.cover,
                height: maxHeight,
                width: maxWidth,
              ),
              SingleChildScrollView(
                padding: EdgeInsets.only(top: (maxHeight - heightOfMainContainer) / 2 ),
                child: Center(
                  child: Container(
                    width: widthOfMainContainer,
                    height: heightOfMainContainer,
                    decoration: BoxDecoration(
                      color: dtlBlack.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/images/logo-column.png',
                          height: maxWidth < 800 ? 76 : 112,
                        ),
                        Column(
                          children: [
                            LabeledButton(
                              labelText: 'Já possui uma conta?',
                              button: MainButton(
                                title: 'Login',
                                textColor: dtlGrey100,
                                buttonColor: dtlGreyBlue,
                                width: 240,
                                height: 40,
                                borderRadius: 8,
                                onPress: () => Navigator.pushNamed(context, '/login'),
                              ), 
                            ),
                            const SizedBox(height: 20,),
                            LabeledButton(
                              labelText: 'Ainda não possui uma conta?',
                              button: MainButton(
                                title: 'Cadastra-se',
                                textColor: dtlGrey100,
                                buttonColor: dtlGreyBlue,
                                width: 240,
                                height: 40,
                                borderRadius: 8,
                                onPress: () => Navigator.pushNamed(context, '/signup'),
                              ), 
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }
    );
  }
}