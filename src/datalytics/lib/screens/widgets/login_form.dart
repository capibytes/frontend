import 'package:datalytics/components/custom_form_field.dart';
import 'package:datalytics/components/main_button.dart';
import 'package:datalytics/constants.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});

  final _formKey = GlobalKey<FormState>();

  String? validateEmail(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Insira um endereço de e-mail';
    }
    if (!EmailValidator.validate(value)){
      return 'E-mail inserido é inválido';
    }
    return null;
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: _formKey,
          child: Column(
            children: [
              CustomFormField(
                labelText: 'E-mail',
                validate: validateEmail,
              ),
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
