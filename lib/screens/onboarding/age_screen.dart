import 'package:flutter/material.dart';
import 'package:fithub/constants.dart';
import 'package:fithub/widgets/onboarding/onboarding_page.dart';
import 'package:fithub/widgets/onboarding/elements/wheel_scroll.dart';
import 'package:fithub/screens/onboarding/goal_screen.dart';

class AgeScreen extends StatefulWidget {
  const AgeScreen({super.key});

  @override
  State<AgeScreen> createState() => _AgeScreenState();
}

class _AgeScreenState extends State<AgeScreen> {
  int selectedAge = 17;

  @override
  Widget build(BuildContext context) {
    return OnboardingPage(
      title: 'How old are you?',
      subtitle: 'This helps us create your personalized plan',
      nextBtnText: 'Next',
      isBackBtn: true,
      isNextBtn: true,
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const GoalScreen()),
        );
      }, 
      child: OnboardingWheelScroll(
        initialItem: selectedAge,
        itemExtent: 80,
        widthBorder: 100,
        textStyle: onboardIntScrollStyle,
        list: List.generate(100, (index) => '${index + 1}'),
        onSelectedItemChanged: (value) => {
          setState(() {
            selectedAge = value + 1;
          })
        },
      ),
    );
  }
}