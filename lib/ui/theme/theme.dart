import 'package:flutter/material.dart';
import 'package:fithub/constants.dart';

final mainTheme = ThemeData(
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: kPrimaryColor,
    selectionColor: kPrimaryColor,
    selectionHandleColor: kPrimaryColor,
  ),
  scaffoldBackgroundColor: kBackgroundColor,
  primaryColor: kPrimaryColor,
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      color: kTextColor,
    ),
  ),
  useMaterial3: true,
);