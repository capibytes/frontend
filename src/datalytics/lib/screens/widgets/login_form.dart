import 'package:datalytics/components/custom_form_field.dart';
import 'package:datalytics/components/main_button.dart';
import 'package:datalytics/constants.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  bool hidePassword = true;

  void hideOrShowPasswordText(){
    setState(() => hidePassword = !hidePassword,);
  }

  String? validateEmail(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Insira um endereço de e-mail';
    }
    if (!EmailValidator.validate(value)){
      return 'E-mail inserido é inválido';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Este campo é obrigatório*';
    }
    if (value.trim().length < 8){
      return 'Deve conter ao menos 8 caracteres';
    }
    return null;
  }

  void submitForm() {
    if(_formKey.currentState!.validate()){
      print('Formulario validado');
    }
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
              CustomFormField(
                labelText: 'Senha',
                hideText: hidePassword,
                validate: validatePassword,
                suffix: IconButton(
                  onPressed: hideOrShowPasswordText,
                  icon: Icon(
                    hidePassword ? Icons.remove_red_eye_outlined : Icons.remove_red_eye,
                    size: 14,
                    color: dtlGrey100,
                  ),
                ),
              ),
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
          onPress: submitForm,
        ),
      ],
    );
  }
}
