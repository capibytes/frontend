import 'package:datalytics/components/labeled_button.dart';
import 'package:datalytics/components/main_button.dart';
import 'package:datalytics/constants.dart';
import 'package:datalytics/textos.dart';
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
            'assets/images/background_robo.png',
            fit: BoxFit.fill,
            height: size.height,
            width: size.width,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    ),
                    Column(
                      children: [
                        const SizedBox(height: 50,),
                        Container(
                          height: size.height * 0.8,
                          width: size.width / 4,
                          decoration: BoxDecoration(
                            color: dtlBlack.withOpacity(0.5),
                            borderRadius: const BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset('assets/images/complete-logo.png',),
                              Column(
                                children: [
                                  LabeledButton(
                                    labelText: 'Já possui uma conta?',
                                    button: MainButton(
                                      title: 'Login',
                                      textColor: dtlGrey100,
                                      buttonColor: dtlGreyBlue,
                                      width: (size.width / 4) - 60,
                                      height: 40,
                                      borderRadius: 8,
                                      onPress: (){},
                                    ), 
                                  ),
                                  const SizedBox(height: 20,),
                                  LabeledButton(
                                    labelText: 'Ainda não possui uma conta?',
                                    button: MainButton(
                                      title: 'Cadastra-se',
                                      textColor: dtlGrey100,
                                      buttonColor: dtlGreyBlue,
                                      width: (size.width / 4) - 60,
                                      height: 40,
                                      borderRadius: 8,
                                      onPress: (){},
                                    ), 
                                  ),
                                  SizedBox(height: size.height * 0.06,)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 30,),
                Center(
                  child: Column(
                    children: [
                      const Text(
                        'Qual o segredo da',
                        style: TextStyle(
                          color: dtlWhite,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const Text(
                        'Governaça de dados',
                        style: TextStyle(
                          color: dtlWhite,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: size.height * 0.02,),
                      Container(
                        width: size.width * 0.9,
                        decoration: BoxDecoration(
                          color: dtlBlack.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.08,
                            vertical: 20,
                          ),
                          child: const Text(
                            welcomeText,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: dtlWhite,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}