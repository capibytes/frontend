import 'package:datalytics/components/top_bar_button_text_option.dart';
import 'package:datalytics/constants.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 68,
      color: dtlBrown300,
      padding: const EdgeInsets.symmetric(horizontal: 48),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, '/home');
            },
            child: Image.asset(
              'assets/images/main-logo.png',
              height: 38,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TopBarButtonTextOption(
                title: 'Blog',
                onPress: (){
                  Navigator.pushNamed(context, '/blog');
                },
              ),
              TopBarButtonTextOption(
                title: 'Consultores',
                onPress: (){
                  Navigator.pushNamed(context, '/consultors');
                },
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/myprofile');
                },
                child: Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: dtlGrey100,
                    borderRadius: BorderRadius.circular(200),
                  ),
                  child: const Icon(
                    Icons.person,
                    size: 32,
                    color: dtlBlack,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}