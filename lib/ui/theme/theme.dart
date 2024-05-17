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
  //colorScheme: ColorScheme(),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      color: kTextColor,
    ),
  ),
  //appBarTheme: AppBarTheme(titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
  useMaterial3: true,
);