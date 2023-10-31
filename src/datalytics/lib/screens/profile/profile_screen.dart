import 'package:datalytics/components/header.dart';
import 'package:datalytics/constants.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double maxWidth = constraints.maxWidth;
        double maxHeight = constraints.maxHeight;

        return Scaffold(
          body: Stack(
            children: [
              Image.asset(
                'assets/images/background-img.png',
                fit: BoxFit.cover,
                height: maxHeight,
                width: maxWidth,
              ),
              Container(
                height: maxHeight,
                width: maxWidth,
                color: dtlBlack.withOpacity(0.7),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    const Header(),
                    const SizedBox(height: 60,),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Container(
                        decoration: BoxDecoration(
                          color: dtlBlack.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 120,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Image.asset(
                                    'assets/images/consultor_example.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(width: 12,),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Jean Da Silva Sauro',
                                      style: TextStyle(
                                        color: dtlWhite,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      'Advogado',
                                      style: TextStyle(
                                        color: dtlWhite,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                    Text(
                                      'E-comerce',
                                      style: TextStyle(
                                        color: dtlWhite,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 60,),
                            const Text(
                              'Sobre: ',
                              style: TextStyle(
                                color: dtlWhite,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 18,),
                            const Text(
                              'Minha abordagem é holística. Começo por entender a sua estrutura e processos para identificar potenciais riscos e vulnerabilidades. Em seguida, desenvolvo estratégias de segurança robustas e eficazes, que podem incluir treinamento de funcionários, implementação de tecnologias avançadas, elaboração de políticas de segurança e planos de resposta a incidentes.',
                              style: TextStyle(
                                color: dtlWhite,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(height: 60,),
                            const Text(
                              'Links: ',
                              style: TextStyle(
                                color: dtlWhite,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            const Row(
                              children: [
                                Icon(
                                  PhosphorIcons.instagram_logo,
                                  color: dtlGrey100,
                                  size: 45,
                                ),
                                SizedBox(width: 8,),
                                Icon(
                                  PhosphorIcons.linkedin_logo,
                                  color: dtlGrey100,
                                  size: 45,
                                ),
                                SizedBox(width: 8,),
                                Icon(
                                  PhosphorIcons.browser,
                                  color: dtlGrey100,
                                  size: 45,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}