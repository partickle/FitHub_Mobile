import 'package:flutter/material.dart';
import 'package:fithub/constants.dart';
import 'package:fithub/screens/gender_screen.dart';

class WelcomePage extends StatelessWidget {
  final String urlImage;
  final String upText;
  final String downText;
  final bool isLast;

  const WelcomePage({
    super.key,
    required this.urlImage,
    required this.upText,
    required this.downText,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          urlImage,
          height: MediaQuery.of(context).size.height * 0.6,
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
                      padding: const EdgeInsets.only(left: 20),
                      fixedSize: const Size(180, 50),
                      backgroundColor: kPrimaryColor,
                      foregroundColor: kBackgroundColor
                    ).copyWith(
                      overlayColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed) || states.contains(MaterialState.focused)) {
                            return kPressedColor;
                          }
                          return kPrimaryColor;
                        })),
                    onPressed: () async {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => const GenderScreen()),
                      );
                    },
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Start Now',
                          style: welcomeButtonStyle,
                        ),
                        Icon(Icons.arrow_right, size: 33)
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