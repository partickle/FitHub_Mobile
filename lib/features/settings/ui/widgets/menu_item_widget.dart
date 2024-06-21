import 'package:flutter/material.dart';

Widget buildMenuItem(String text, VoidCallback onTap) {
  Color textColor = text == "Sign out" ? Colors.red : Colors.white;

  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.w400,
          color: textColor,
        ),
      ),
    ),
  );
}
