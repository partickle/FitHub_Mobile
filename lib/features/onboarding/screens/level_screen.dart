import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fithub/constants.dart';
import 'package:fithub/features/onboarding/widgets/onboarding_page.dart';
import 'package:fithub/features/onboarding/widgets/elements/wheel_scroll.dart';

@RoutePage()
class LevelScreen extends StatefulWidget {
  const LevelScreen({super.key});

  @override
  State<LevelScreen> createState() => _LevelScreenState();
}

class _LevelScreenState extends State<LevelScreen> {
  int selectedGoal = 2;

  @override
  Widget build(BuildContext context) {
    final List<String> goals = [
      'Rookie',
      'Beginner',
      'Intermediate',
      'Advance',
      'True Beast'
    ];

    return OnboardingPage(
      title: 'Your regular physical\nactivity level?',
      subtitle: 'This helps us create your personalized plan',
      nextBtnText: 'Start',
      isBackBtn: true,
      isNextBtn: true,
      onPressed: () { 
        // AutoRouter.of(context).popAndPushAll(const HomeRoute());
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