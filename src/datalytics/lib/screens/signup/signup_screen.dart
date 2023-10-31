import 'package:datalytics/components/custom_form_field.dart';
import 'package:datalytics/components/main_button.dart';
import 'package:datalytics/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:email_validator/email_validator.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  late String passwordInserted;

  bool hidePassword = true;
  bool hideConfirmPassword = true;

  void hideOrShowPasswordText(){
    setState(() {
      hidePassword = !hidePassword;
    });
  }

  void hideOrShowConfirmPasswordText(){
    setState(() {
      hideConfirmPassword = !hideConfirmPassword;
    });
  }

  String? validateUserName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Campo obrigatório*';
    }
    return null;
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
    passwordInserted = value;
    return null;
  }

  String? validateConfirmPassword(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Este campo é obrigatório*';
    }
    if (value != passwordInserted){
      return 'Senha inválida';
    }
    return null;
  }

  void submitForm() {
    if(_formKey.currentState!.validate()){
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double maxWidth = constraints.maxWidth;
        double maxHeight = constraints.maxHeight;

        double widthOfMainContainer = maxWidth < 800 ? maxWidth * 0.8 : 600;
        double formFieldWidth = maxWidth < 600 ? 380 : 620;

        return Scaffold(
          body: Stack(
            children: [
              Image.asset(
                'assets/images/background-img.png',
                fit: BoxFit.fill,
                height: maxHeight,
                width: maxWidth,
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 28),
                  child: Center(
                    child: Container(
                      width: widthOfMainContainer,
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        color: dtlBlack.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          const Text(
                            'Crie sua conta',
                            style: TextStyle(
                              color: dtlWhite,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(height: 18,),
                          Stack(
                            children: [
                              Container(
                                width: 120,
                                height: 120,
                                decoration: BoxDecoration(
                                  color: dtlGrey100,
                                  borderRadius: BorderRadius.circular(200),
                                ),
                                child: const Icon(
                                  PhosphorIcons.user,
                                  size: 52,
                                ),
                              ),
                              Positioned(
                                right: 1,
                                bottom: 1,
                                child: Container(
                                  width: 32,
                                  height: 32,
                                  decoration: BoxDecoration(
                                    color: dtlGreyBlue,
                                    borderRadius: BorderRadius.circular(200),
                                  ),
                                  child: const Icon(
                                    PhosphorIcons.plus,
                                    size: 22,
                                    color: dtlWhite,
                                  ),
                                )
                              ),
                            ],
                          ),
                          const SizedBox(height: 40,),
                          Form(
                            key: _formKey,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CustomFormField(
                                  labelText: 'Nome do usuario',
                                  validate: validateUserName,
                                  width: formFieldWidth,
                                ),
                                const SizedBox(height: 8,),
                                CustomFormField(
                                  labelText: 'Endereço de e-mail',
                                  validate: validateEmail,
                                  width: formFieldWidth,
                                ),
                                const SizedBox(height: 8,),
                                CustomFormField(
                                  labelText: 'Crie sua senha',
                                  validate: validatePassword,
                                  hideText: hidePassword,
                                  width: formFieldWidth,
                                  suffix: IconButton(
                                    onPressed: hideOrShowPasswordText,
                                    icon: Icon(
                                      hidePassword ? PhosphorIcons.eye : PhosphorIcons.eye_slash,
                                      size: 12,
                                      color: dtlGrey100,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8,),
                                CustomFormField(
                                  labelText: 'Confirme sua senha',
                                  validate: validateConfirmPassword,
                                  hideText: hideConfirmPassword,
                                  width: formFieldWidth,
                                  suffix: IconButton(
                                    onPressed: hideOrShowConfirmPasswordText,
                                    icon: Icon(
                                      hideConfirmPassword ? PhosphorIcons.eye : PhosphorIcons.eye_slash,
                                      size: 12,
                                      color: dtlGrey100,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 40,),
                          MainButton(
                            title: 'Cadastrar',
                            onPress: submitForm,
                            buttonColor: dtlGreyBlue,
                            textColor: dtlGrey100,
                            width: 120,
                            height: 40,
                          ),
                          const SizedBox(height: 60,),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}