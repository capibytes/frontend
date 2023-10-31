import 'package:datalytics/constants.dart';
import 'package:datalytics/screens/home/utils/home_texts.dart';
import 'package:flutter/material.dart';

class ImportanceOfDataGovernanceDiv extends StatelessWidget {
  const ImportanceOfDataGovernanceDiv({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, cosntraints){
        double maxWidth = cosntraints.maxWidth;

        return Column(
          children: [
            const Text(
              'Qual a importância da Governança de Dados?',
              style: TextStyle(
                color: dtlWhite,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20,),
            maxWidth < 800 ?
            ContentColumn(width: maxWidth * 0.8)
            : ContentRow(width: ((maxWidth - 240 ) / 3) * 2 )
          ],
        );
      }
    );
  }
}


class ContentRow extends StatelessWidget {
  final double width; 
  const ContentRow({required this.width, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/image2-home.png',
          width: 240,
          height: 180,
        ),
        const SizedBox(width: 20,),
        SizedBox(
          width: width,
          child: Text(
            HomeTexts.theImportanceOfDataGovernance,
            maxLines: 12,
            overflow: TextOverflow.clip,
            style: const TextStyle(
              color: dtlWhite,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}


class ContentColumn extends StatelessWidget {
  final double width; 
  const ContentColumn({required this.width, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/image2-home.png',
          width: 240,
          height: 180,
        ),
        const SizedBox(width: 20,),
        SizedBox(
          width: width,
          child: Text(
            HomeTexts.theImportanceOfDataGovernance,
            maxLines: 12,
            overflow: TextOverflow.clip,
            style: const TextStyle(
              color: dtlWhite,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}