import 'package:datalytics/components/main_button.dart';
import 'package:datalytics/constants.dart';
import 'package:datalytics/models/consultor_opinion_model.dart';
import 'package:datalytics/screens/welcome/utils/welcome_texts.dart';
import 'package:datalytics/screens/welcome/widgets/consultor_opinion_container.dart';
import 'package:datalytics/screens/welcome/widgets/welcome_commom_paragraph.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';

class WelcomeDesktopBody extends StatefulWidget {
  const WelcomeDesktopBody({super.key});

  @override
  State<WelcomeDesktopBody> createState() => _WelcomeDesktopBodyState();
}

class _WelcomeDesktopBodyState extends State<WelcomeDesktopBody> {

  final List<ConsultorOpinionModel> consultorsOpinions = [
    ConsultorOpinionModel(consultorName: 'Andre Soares', cosultorAvatar: 'assets/mocks/consultorFake1.png', consultorComment: 'Governança de dados: essencial para conformidade legal e proteção dos interesses dos clientes na era digital.'),
    ConsultorOpinionModel(consultorName: 'José Oliveira Santos', cosultorAvatar: 'assets/mocks/consultorFake2.png', consultorComment: 'Em um cenário em constante evolução, a governança de dados é a âncora que sustenta nossa prática jurídica.'),
    ConsultorOpinionModel(consultorName: 'Adebaldo da Silva', cosultorAvatar: 'assets/mocks/consultorFake3.png', consultorComment: 'Governança de dados: essencial para conformidade legal e proteção dos interesses dos clientes na era digital.'),
    ConsultorOpinionModel(consultorName: 'Galdencio Martins', cosultorAvatar: 'assets/mocks/consultorFake4.png', consultorComment: 'Em um cenário em constante evolução, a governança de dados é a âncora que sustenta nossa prática jurídica.'),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/background-img.png',
            fit: BoxFit.cover,
            height: size.height,
            width: size.width,
          ),
          Container(
            color: dtlGrey100.withOpacity(0.3),
            height: size.height,
            width: size.width,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      'assets/images/background_robo.png',
                      fit: BoxFit.cover,
                      height: size.height,
                      width: size.width,
                    ),
                    Container(
                      color: dtlBlack.withOpacity(0.3),
                      height: size.height,
                      width: size.width,
                    ),
                    SizedBox(
                      height: size.height,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 32.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: size.height * 0.1,),
                                SizedBox(
                                  height: 92,
                                  child: Image.asset(
                                    'assets/images/main-logo.png',
                                  ),
                                ),
                                SizedBox(height: size.height * 0.1,),
                                SizedBox(
                                  width: size.width / 2,
                                  child: Text(
                                    WelcomeTexts.firstText,
                                    overflow: TextOverflow.clip,
                                    maxLines: 6,
                                    style: const TextStyle(
                                      color: dtlWhite,
                                      fontSize: 26,
                                    ),
                                  ),
                                ),
                                MainButton(
                                  title: 'SEJA MEMBRO',
                                  buttonColor: dtlBrown300,
                                  width: 180,
                                  height: 40,
                                  textColor: dtlGrey100,
                                  borderRadius: 12,
                                  onPress: () => Navigator.pushNamed(context, '/logon'),
                                ),
                              ],
                            ),
                          ),
                          const Center(
                            child: Column(
                              children: [
                                Text(
                                  'Qual é o segredo da',
                                  style: TextStyle(
                                    color: dtlWhite,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Text(
                                  'Governaça de dados?',
                                  style: TextStyle(
                                    color: dtlWhite,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 12,),
                                Icon(
                                  PhosphorIcons.caret_double_down,
                                  size: 18,
                                  color: dtlGrey100,
                                ),
                                SizedBox(height: 12,),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 24)),
                WelcomeCommomParagraph(content: WelcomeTexts.whatIsFirstBloc),
                const SizedBox(height: 12,),
                SizedBox(
                  width: 420,
                  child: Image.asset(
                    'assets/images/welcome-whatis-photo1.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 12,),
                WelcomeCommomParagraph(content: WelcomeTexts.whatIsSecondBloc),
                const SizedBox(height: 12,),
                WelcomeCommomParagraph(content: WelcomeTexts.whatIsThirdBloc),
                const SizedBox(height: 12,),
                SizedBox(
                  width: 420,
                  child: Image.asset(
                    'assets/images/welcome-whatis-photo2.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 12,),
                WelcomeCommomParagraph(content: WelcomeTexts.whatIsFourthBloc),
                const SizedBox(height: 32,),
                MainButton(
                  title: 'Fale com um especialista',
                  buttonColor: dtlGreyBlue,
                  width: 180,
                  height: 40,
                  textColor: dtlGrey100,
                  borderRadius: 12,
                  onPress: () => Navigator.pushNamed(context, '/logon'),
                ),
                const SizedBox(height: 42,),
                SizedBox(
                  width: 320,
                  child: Text(
                    WelcomeTexts.consultorsOpiniumHeader,
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: dtlBlack,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 24,),
                SizedBox(
                  width: size.width < 1200 ? 580 : size.width * 0.6,
                  height: 250,
                  child: ListView.builder(
                    shrinkWrap: true,
                    primary: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: consultorsOpinions.length,
                    itemBuilder: (context, index){
                      ConsultorOpinionModel consultorOpinion = consultorsOpinions[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: ConsultorOpinionContainer(consultorOpinion: consultorOpinion),
                      );
                    }
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}