import 'package:auto_route/auto_route.dart';
import 'package:fithub/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:fithub/constants.dart';
import 'package:fithub/features/onboarding/widgets/onboarding_page.dart';
import 'package:fithub/features/onboarding/widgets/elements/wheel_scroll.dart';

@RoutePage()
class GoalScreen extends StatefulWidget {
  const GoalScreen({super.key});

  @override
  State<GoalScreen> createState() => _GoalScreenState();
}

class _GoalScreenState extends State<GoalScreen> {
  int selectedGoal = 2;

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
        AutoRouter.of(context).push(const LevelRoute());
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
