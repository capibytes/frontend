import 'package:datalytics/components/main_button.dart';
import 'package:datalytics/constants.dart';
import 'package:flutter/material.dart';


class FindConsultors extends StatelessWidget {
  const FindConsultors({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double maxWidth = constraints.maxWidth;

        return maxWidth < 800 ?
          Column(
            children: [
              Image.asset(
                'assets/images/image1-home.png',
                width: 240,
                height: 180,
              ),
              const Content(width: 320),
            ],
          )
        : Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Content(width: maxWidth / 4),
            Image.asset(
              'assets/images/image1-home.png',
              width: 240,
              height: 180,
            ),
          ],
        );
      }
    );
  }
}


class Content extends StatelessWidget {
  final double width;
  const Content({required this.width, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: width,
          child: const Text(
            '''Encontre um consultor adequado para ajudar a sua empresa na gestão de dados.''',
            overflow: TextOverflow.ellipsis,
            maxLines: 4,
            style: TextStyle(
              color: dtlWhite,
              fontSize: 18,
            ),
          ),
        ),
        const SizedBox(height: 12,),
        MainButton(
          title: 'Encontrar',
          buttonColor: dtlGreyBlue,
          textColor: dtlWhite,
          borderRadius: 8,
          width: 120,
          height: 40,
          onPress: () => Navigator.pushNamed(context, '/consultors'),
        ),
      ],
    );
  }
}