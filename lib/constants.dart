import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kPrimaryColor = Color(0xFFD0FD3E);
const kPressedColor = Color.fromARGB(255, 138, 171, 28);
const kTextColor = Color(0xFFFFFFFF);
const kSecTextColor = Color(0xFF000000);
const kBackgroundColor = Color(0xFF1c1c1e);
const kSecBackgroundColor = Color(0xFF2C2C2E);
const kThirdBackgroundColor = Color(0xFF505050);
const kBackButtonColor = Color(0xFF3A3A3C);
const kErrorColor = Color(0xFFFF2424);

const double kDefaulfPadding = 20.0;

const String baseUrl = 'https://40a0-83-139-159-199.ngrok-free.app';

final List<String> goals = [
  'Gain Weight',
  'Lose weight',
  'Get fitter',
  'Gain more flexible',
  'Learn the basics'
];

final List<String> levels = [
  'Rookie',
  'Beginner',
  'Intermediate',
  'Advance',
  'True Beast'
];

var welcomeUpStyle = GoogleFonts.openSans(
  fontSize: 34,
  fontWeight: FontWeight.w300,
  height: 1
);

var welcomeDownStyle = GoogleFonts.openSans(
  fontSize: 34,
  fontWeight: FontWeight.bold,
  height: 1
);

var welcomeButtonStyle = GoogleFonts.openSans(
  fontSize: 18,
  fontWeight: FontWeight.w600,
  height: 1
);

var onboardingTitleStyle = GoogleFonts.openSans(
  fontSize: 26,
  fontWeight: FontWeight.bold,
  height: 1.2,
);

var onboardingSubtitleStyle = GoogleFonts.openSans(
  fontSize: 13,
  fontWeight: FontWeight.w400,
  height: 1.2,
);

var onboardGenderButStyle = GoogleFonts.openSans(
  fontSize: 15,
  fontWeight: FontWeight.w400,
  height: 1,
  letterSpacing: 0.8,
);

var onboardNextButStyle = GoogleFonts.openSans(
  fontSize: 18,
  fontWeight: FontWeight.w600,
);

var onboardIntScrollStyle = GoogleFonts.openSans(
  fontSize: 50,
  fontWeight: FontWeight.w500,
  height: 1,
  letterSpacing: 0.5,
);

var onboardStrScrollStyle = GoogleFonts.openSans(
  fontSize: 24,
  fontWeight: FontWeight.w500,
  height: 1,
  letterSpacing: 0.5,
);

var registerSwitchStyle = GoogleFonts.openSans(
  fontSize: 15,
  fontWeight: FontWeight.w500,
  height: 1,
);

var registerMaybeStyle = GoogleFonts.openSans(
  fontSize: 16,
  fontWeight: FontWeight.w500,
  height: 1
);

var registerSubtitleStyle = GoogleFonts.openSans(
  fontSize: 13,
  fontWeight: FontWeight.w400,
  height: 1.4
);

var registerInputStyle = GoogleFonts.openSans();

var verificationStyle = GoogleFonts.openSans(
  fontSize: 30,
  fontWeight: FontWeight.w500
);