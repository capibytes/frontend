import 'package:datalytics/constants.dart';
import 'package:datalytics/models/consultor_opinion_model.dart';
import 'package:flutter/material.dart';

class ConsultorOpinionContainer extends StatelessWidget {
  final ConsultorOpinionModel consultorOpinion;
  const ConsultorOpinionContainer({required this.consultorOpinion, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 250,
      child: Stack(
        children: [
          Container(
            width: 300,
            height: 150,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: dtlGrey100,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  consultorOpinion.consultorName,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: dtlBlack,
                  ),
                ),
                Text(
                  '"${consultorOpinion.consultorComment}"',
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.clip,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                    color: dtlBlack,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 1,
            right: 1,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
              ),
              child: Image.asset(
                consultorOpinion.cosultorAvatar,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}