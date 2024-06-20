import 'package:fithub/res/constants/constants.dart';
import 'package:flutter/material.dart';

class CenterElevatedButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const CenterElevatedButton({
    super.key,
    required this.buttonText,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 40,
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 15),
            foregroundColor: kSecTextColor,
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28),
            ),
          ),
          onPressed: onPressed,
          child: Center(
            child: Text(buttonText, style: onboardNextButStyle),
          ),
        ),
      ),
    );
  }
}