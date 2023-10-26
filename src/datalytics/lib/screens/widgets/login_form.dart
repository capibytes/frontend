import 'package:datalytics/components/custom_form_field.dart';
import 'package:datalytics/components/main_button.dart';
import 'package:datalytics/constants.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          child: Column(
            children: [
              const CustomFormField(labelText: 'E-mail'),
              const SizedBox(height: 16,),
              const CustomFormField(labelText: 'Senha'),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: (){},
                    child: const Text(
                      'esqueci minha senha',
                      style: TextStyle(
                        color: dtlGrey100,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const SizedBox(width: 25,),
                ],
              )
            ],
          )
        ),
        const SizedBox(height: 25,),
        MainButton(
          title: 'Entrar',
          buttonColor: dtlGreyBlue,
          textColor: dtlGrey100,
          borderRadius: 8,
          height: 40,
          width: 120,
          onPress: (){},
        ),
      ],
    );
  }
}
