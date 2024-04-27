import 'package:flutter/material.dart';
import 'package:fithub/constants.dart';

class LoginButton extends StatefulWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const LoginButton({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap
  });

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  Color color = kTextColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 3.0,
            color:
              widget.isSelected ? kPrimaryColor : Colors.transparent
          ),
        ),
      ),
      child: GestureDetector(
        onTapDown: (_) {
          setState(() {
            color = widget.isSelected ? kTextColor : kPrimaryColor;
          });
        },
        onTapUp: (_) {
          setState(() {
            color = kTextColor;
          });
        },
        onTapCancel: () {
          setState(() {
            color = kTextColor;
          });
        },
        onTap: widget.onTap,
        child: Text(
          widget.text,
          style: registerSwitchStyle.copyWith(color: color),
        ),
      ),
    );
  }
}