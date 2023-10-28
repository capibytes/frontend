import 'package:datalytics/constants.dart';
import 'package:datalytics/models/consultor_model.dart';
import 'package:flutter/material.dart';

class ConsultorTile extends StatelessWidget {
  final ConsultorModel consultor;
  final VoidCallback? onPress;
  const ConsultorTile({
    required this.consultor,
    this.onPress,
    super.key
  });

  TextStyle getTextStyle({bool bold = false, double fontSize = 14}) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: bold ? FontWeight.w400 : FontWeight.normal,
      color: dtlBlack,
      overflow: TextOverflow.clip,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListTile(
        onTap: onPress,
        title: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                dtlGrey100,
                dtlBlue800,
              ],
              begin: FractionalOffset(0, 0),
              end: FractionalOffset(0, 1),
              stops: [0.6, 1],
              tileMode: TileMode.clamp,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 8,),
              Image.asset(
                consultor.avatarUrl,
              ),
              const SizedBox(width: 24,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    consultor.name,
                    style: getTextStyle(bold: true, fontSize: 16),
                  ),
                  Text(
                    consultor.type,
                    style: getTextStyle(),
                  ),
                  Text(
                    consultor.job,
                    style: getTextStyle(),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}