import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fithub/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:fithub/res/constants/constants.dart';
import 'package:fithub/features/onboarding/ui/components/onboarding_page.dart';
import 'package:fithub/features/onboarding/ui/widgets/wheel_scroll.dart';
import 'package:fithub/features/onboarding/service/preferences_service.dart';

@RoutePage()
class AgeScreen extends StatefulWidget {
  const AgeScreen({super.key});

  @override
  State<AgeScreen> createState() => _AgeScreenState();
}

class _AgeScreenState extends State<AgeScreen> {
  int selectedAge = 17;
  final PreferencesService _prefs = PreferencesService();

  @override
  void initState() {
    AppMetrica.reportEvent('Open age screen');
    super.initState();
  }

  void _updateAge(int age) async {
    setState(() {
      selectedAge = age;
    });

    // Получение текущих данных профиля
    var profile = await _prefs.getUserProfile();
    // Обновление только возраста
    await _prefs.setUserProfile(
      profile['is_male'], 
      age, 
      profile['goal'], 
      profile['physical_activity_level']
    );
  }

  @override
  Widget build(BuildContext context) {
    return OnboardingPage(
      title: 'How old are you?',
      subtitle: 'This helps us create your personalized plan',
      nextBtnText: 'Next',
      isBackBtn: true,
      isNextBtn: true,
      onPressed: () {
        AutoRouter.of(context).push(const GoalRoute());
      }, 
      child: OnboardingWheelScroll(
        initialItem: selectedAge - 1,
        itemExtent: 80,
        widthBorder: 100,
        textStyle: onboardIntScrollStyle,
        list: List.generate(100, (index) => '${index + 1}'),
        onSelectedItemChanged: (value) {
          _updateAge(value + 1);
        },
      ),
    );
  }
}
