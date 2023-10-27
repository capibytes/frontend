import 'package:datalytics/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: size.width,
            height: 68,
            color: dtlBrown300,
            padding: const EdgeInsets.symmetric(horizontal: 48),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Datalytics',
                  style: TextStyle(
                    fontSize: 26,
                    color: dtlGreyBlue,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const TopBarButtonTextOption(title: 'Blog'),
                    const TopBarButtonTextOption(title: 'LGPD'),
                    const TopBarButtonTextOption(title: 'Sobre'),
                    const TopBarButtonTextOption(title: 'Consultores'),
                    Container(
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
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class TopBarButtonTextOption extends StatelessWidget {
  final String title;
  final VoidCallback? onPress;
  const TopBarButtonTextOption({
    required this.title,
    this.onPress,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      child: Text(
        title,
        style: const TextStyle(
          color: dtlGreyBlue,
          fontSize: 16,
          fontWeight: FontWeight.w200,
        ),
      ),
    );
  }
}