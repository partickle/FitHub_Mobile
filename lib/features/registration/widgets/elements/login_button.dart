import 'package:flutter/material.dart';
import 'package:fithub/constants.dart';

class LoginButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const LoginButton({
    super.key,
    required this.text,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    Color color = kTextColor;

    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 3.0, color: kPrimaryColor),
        ),
      ),
      child: GestureDetector(
        onTapDown: (_) {
          color = kBackgroundColor;
        },
        onTapUp: (_) {
          color = kTextColor;
        },
        onTapCancel: () {
          color = kTextColor;
        },
        onTap: onTap,
        child: Text(
          text,
          style: registerSwitchStyle.copyWith(color: color),
        ),
      ),
    );
  }
}