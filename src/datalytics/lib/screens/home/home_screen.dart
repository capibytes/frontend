import 'package:datalytics/components/header.dart';
import 'package:datalytics/constants.dart';
import 'package:datalytics/screens/home/widgets/find_consultors_div.dart';
import 'package:datalytics/screens/home/widgets/importance_of_data_governance_div.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double maxWidth = constraints.maxWidth;
        double maxHeight = constraints.maxHeight;

        return Scaffold(
          body: Stack(
            children: [
              Stack(
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
                  const SingleChildScrollView(
                    child: Column(
                      children: [
                        Header(),
                        SizedBox(height: 40,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 60),
                          child: Column(
                            children: [
                              FindConsultors(),
                              SizedBox(height: 120,),
                              ImportanceOfDataGovernanceDiv(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        );
      }
    );
  }
}
