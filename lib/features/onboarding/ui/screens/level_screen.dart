import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:flutter/material.dart';
import 'package:fithub/constants.dart';
import 'package:fithub/features/onboarding/ui/components/onboarding_page.dart';
import 'package:fithub/features/onboarding/ui/widgets/wheel_scroll.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fithub/router/app_router.dart';

@RoutePage()
class LevelScreen extends StatefulWidget {
  const LevelScreen({super.key});

  @override
  State<LevelScreen> createState() => _LevelScreenState();
}

class _LevelScreenState extends State<LevelScreen> {
  int selectedGoal = 2;

  @override
  void initState() {
    AppMetrica.reportEvent('Open level screen');
    super.initState();
  }

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
        AutoRouter.of(context).replace(const AuthorizationRoute());
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