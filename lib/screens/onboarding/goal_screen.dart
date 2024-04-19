import 'package:flutter/material.dart';
import 'package:fithub/constants.dart';
import 'package:fithub/widgets/onboarding/onboarding_page.dart';
import 'package:fithub/widgets/onboarding/elements/onboarding_wheel_scroll.dart';
import 'package:fithub/screens/onboarding/level_screen.dart';

class GoalScreen extends StatefulWidget {
  const GoalScreen({super.key});

  @override
  State<GoalScreen> createState() => _GoalScreenState();
}

class _GoalScreenState extends State<GoalScreen> {
  int selectedGoal = 4;

  @override
  Widget build(BuildContext context) {
    final List<String> goals = [
      'Gain Weight',
      'Lose weight',
      'Get fitter',
      'Gain more flexible',
      'Learn the basics'
    ];

    return OnboardingPage(
      title: 'What\'s your goal?',
      subtitle: 'This helps us create your personalized plan',
      nextBtnText: 'Next',
      isBackBtn: true,
      isNextBtn: true,
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const LevelScreen()),
        );
      }, 
      child: OnboardingWheelScroll(
        initialItem: selectedGoal,
        itemExtent: 60,
        widthBorder: 300,
        textStyle: onboardStrScrollStyle,
        list: goals,
        onSelectedItemChanged: (value) => {
          setState(() {
            selectedGoal = value + 1;
          })
        },
      ),
    );
  }
}
