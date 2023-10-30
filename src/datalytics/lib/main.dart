import 'package:datalytics/constants.dart';
import 'package:datalytics/screens/consultors/consultor_screen.dart';
import 'package:datalytics/screens/home/home_screen.dart';
import 'package:datalytics/screens/login/login_screen.dart';
import 'package:datalytics/screens/logon/logon_screen.dart';
import 'package:datalytics/screens/signup/signup_screen.dart';
import 'package:datalytics/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: dtlGreyBlue),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/logon': (context) => const LogOnScreen(),
        '/login': (context) => const LogInScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/home': (context) => const HomeScreen(),
        '/consultors': (context) => const ConsultorsScreen(),
      },
    );
  }
}
