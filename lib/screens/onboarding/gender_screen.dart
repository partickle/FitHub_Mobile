import 'package:flutter/material.dart';
import 'package:fithub/widgets/onboarding/onboarding_page.dart';
import 'package:fithub/widgets/onboarding/elements/gender_button.dart';
import 'package:fithub/screens/onboarding/age_screen.dart';

class GenderScreen extends StatefulWidget {
  const GenderScreen({super.key});

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  bool isMaleSelected = false;
  bool isFemaleSelected = false;
  
  @override
  Widget build(BuildContext context) {
    return OnboardingPage(
      title: 'Tell us about yourself!', 
      subtitle: 'To give you a better experience we need\nto know your gender',
      nextBtnText: 'Next',
      isBackBtn: false,
      isNextBtn: isMaleSelected || isFemaleSelected, 
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const AgeScreen()),
        );
      }, 
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GenderButton(
            iconData: Icons.male,
            label: 'Male',
            isSelected: isMaleSelected,
            onPressed: () {
              setState(() {
                isMaleSelected = true;
                isFemaleSelected = false;
              });
            }
          ),
          const SizedBox(height: 24),
          GenderButton(
            iconData: Icons.female,
            label: 'Female',
            isSelected: isFemaleSelected,
            onPressed: () {
              setState(() {
                isMaleSelected = false;
                isFemaleSelected = true;
              });
            }
          ),
        ],
      ),
    );
  }
}