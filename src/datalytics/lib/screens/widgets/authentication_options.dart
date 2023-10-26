import 'package:datalytics/components/labeled_button.dart';
import 'package:datalytics/components/main_button.dart';
import 'package:datalytics/constants.dart';
import 'package:flutter/material.dart';

class AuthenticateOptions extends StatelessWidget {
  const AuthenticateOptions({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
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
    );
  }
}