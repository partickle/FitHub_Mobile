import 'package:flutter/material.dart';
import 'package:fithub/res/constants/constants.dart';

class NextButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const NextButton({
    super.key,
    required this.buttonText,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, right: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          foregroundColor: kSecTextColor,
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(padding: EdgeInsets.only(left: 12)),
            Text(buttonText, style: onboardNextButStyle),
            const Icon(Icons.arrow_right, size: 33)
          ],
        ),
      ),
    );
  }
}