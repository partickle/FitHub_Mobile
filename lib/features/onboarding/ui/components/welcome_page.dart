import 'package:flutter/material.dart';
import 'package:fithub/res/constants/constants.dart';

class WelcomePage extends StatelessWidget {
  final String urlImage;
  final String upText;
  final String downText;
  final bool isLast;
  final VoidCallback onPressed;

  const WelcomePage({
    super.key,
    required this.urlImage,
    required this.upText,
    required this.downText,
    required this.isLast,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          urlImage,
          height: MediaQuery.of(context).size.height * 0.57,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Container(
          padding: const EdgeInsets.only(top: 40),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  upText,
                  style: welcomeUpStyle,
                ),
                Text(
                  downText,
                  style: welcomeDownStyle,
                ),
                if (isLast) Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 0, ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.only(left: 18),
                      fixedSize: const Size(180, 50),
                      backgroundColor: kPrimaryColor,
                      foregroundColor: kSecTextColor
                    ),
                    onPressed: onPressed,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Start Now',
                          style: welcomeButtonStyle,
                        ),
                        const Icon(Icons.arrow_right, size: 33)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}