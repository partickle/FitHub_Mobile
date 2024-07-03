import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fithub/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:fithub/res/constants/constants.dart';
import 'package:fithub/features/onboarding/ui/components/onboarding_page.dart';
import 'package:fithub/features/onboarding/ui/widgets/wheel_scroll.dart';
import 'package:fithub/features/onboarding/data/repository/onboarding_repository.dart';

@RoutePage()
class GoalScreen extends StatefulWidget {
  const GoalScreen({super.key});

  @override
  State<GoalScreen> createState() => _GoalScreenState();
}

class _GoalScreenState extends State<GoalScreen> {
  final OnboardingRepository _repository = OnboardingRepository();
  int initialItem = 2;

  @override
  void initState() {
    AppMetrica.reportEvent('Open goal screen');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return OnboardingPage(
      title: 'What\'s your goal?',
      subtitle: 'This helps us create your personalized plan',
      nextBtnText: 'Next',
      isBackBtn: true,
      isNextBtn: true,
      onPressed: () {
        _repository.setGoal(_repository.toSnakeCase(goals[initialItem]));
        AutoRouter.of(context).push(const LevelRoute());
      }, 
      child: OnboardingWheelScroll(
        initialItem: initialItem,
        itemExtent: 60,
        widthBorder: 300,
        textStyle: onboardStrScrollStyle,
        list: goals,
        onSelectedItemChanged: (value) {
          setState(() {
            initialItem = value;
          });
        }
      ),
    );
  }
}
