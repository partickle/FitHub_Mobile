import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fithub/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:fithub/res/constants/constants.dart';
import 'package:fithub/features/onboarding/ui/components/onboarding_page.dart';
import 'package:fithub/features/onboarding/ui/widgets/wheel_scroll.dart';
import 'package:fithub/features/onboarding/service/preferences_service.dart';

@RoutePage()
class GoalScreen extends StatefulWidget {
  const GoalScreen({super.key});

  @override
  State<GoalScreen> createState() => _GoalScreenState();
}

class _GoalScreenState extends State<GoalScreen> {
  int selectedGoal = 2;
  final PreferencesService _prefs = PreferencesService();
  List<String> goals = ['lose_weight', 'gain_weight', 'improve_fitness'];

  @override
  void initState() {
    AppMetrica.reportEvent('Open goal screen');
    super.initState();
  }

  void _updateGoal(int index) async {
    setState(() {
      selectedGoal = index;
    });

    // Получение текущих данных профиля
    var profile = await _prefs.getUserProfile();
    // Обновление только цели
    await _prefs.setUserProfile(
      profile['is_male'], 
      profile['age'], 
      goals[index], 
      profile['physical_activity_level']
    );
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
        AutoRouter.of(context).push(const LevelRoute());
      }, 
      child: OnboardingWheelScroll(
        initialItem: selectedGoal,
        itemExtent: 60,
        widthBorder: 300,
        textStyle: onboardStrScrollStyle,
        list: goals,
        onSelectedItemChanged: (value) {
          _updateGoal(value);
        },
      ),
    );
  }
}
