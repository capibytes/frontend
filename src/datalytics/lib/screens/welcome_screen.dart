import 'package:datalytics/constants.dart';
import 'package:datalytics/screens/widgets/authentication_options.dart';
import 'package:datalytics/screens/widgets/login_form.dart';
import 'package:datalytics/textos.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool isLoginFormVisible = false;

  void showLoginForm() {
    setState(() {
      isLoginFormVisible = !isLoginFormVisible;
    });
  }

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
                              isLoginFormVisible ? 
                                const LoginForm() :
                              AuthenticateOptions(
                                onLoginPress: showLoginForm,
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