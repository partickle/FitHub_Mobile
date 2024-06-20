import 'package:flutter/material.dart';
import 'package:fithub/res/constants/constants.dart';

final mainTheme = ThemeData(
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: kBackgroundColor,
  ),

  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: kPrimaryColor,
  ),

  snackBarTheme: SnackBarThemeData(
    backgroundColor: kSecBackgroundColor,
    contentTextStyle: responseStyle,
    shape:const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(12),
        topRight: Radius.circular(12)
      ),
    ),
  ),

  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: Colors.white,
      disabledForegroundColor: kBackgroundColor.withAlpha(140),
      disabledBackgroundColor: kBackgroundColor.withAlpha(140),
    ),
  ),

  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: kPrimaryColor,
    selectionColor: kPrimaryColor,
    selectionHandleColor: kPrimaryColor,
  ),

  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      color: kTextColor,
    ),
  ),

  scaffoldBackgroundColor: kBackgroundColor,
  primaryColor: kPrimaryColor,
  useMaterial3: true,
);