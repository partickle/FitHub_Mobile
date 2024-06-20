import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:flutter/material.dart';
import 'package:fithub/res/constants/constants.dart';
import 'package:fithub/features/onboarding/ui/components/onboarding_page.dart';
import 'package:fithub/features/onboarding/ui/widgets/wheel_scroll.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fithub/router/app_router.dart';
import 'package:fithub/features/onboarding/service/preferences_service.dart';

@RoutePage()
class LevelScreen extends StatefulWidget {
  const LevelScreen({super.key});

  @override
  State<LevelScreen> createState() => _LevelScreenState();
}

class _LevelScreenState extends State<LevelScreen> {
  int selectedLevel = 0;
  final PreferencesService _prefs = PreferencesService();
  List<String> levels = ['beginner', 'intermediate', 'advanced'];

  @override
  void initState() {
    AppMetrica.reportEvent('Open level screen');
    super.initState();
  }

  void _updatePhysicalActivityLevel(int index) async {
    setState(() {
      selectedLevel = index;
    });

    // Получение текущих данных профиля
    var profile = await _prefs.getUserProfile();
    // Обновление только уровня физической активности
    await _prefs.setUserProfile(
      profile['is_male'], 
      profile['age'], 
      profile['goal'], 
      levels[index]
    );
  }

  @override
  Widget build(BuildContext context) {
    return OnboardingPage(
      title: 'Your regular physical\nactivity level?',
      subtitle: 'This helps us create your personalized plan',
      nextBtnText: 'Start',
      isBackBtn: true,
      isNextBtn: true,
      onPressed: () {
        AutoRouter.of(context).popUntilRoot();
        AutoRouter.of(context).replace(const AuthorizationRoute());
      }, 
      child: OnboardingWheelScroll(
        initialItem: selectedLevel,
        itemExtent: 60,
        widthBorder: 300,
        textStyle: onboardStrScrollStyle,
        list: levels,
        onSelectedItemChanged: (value) {
          _updatePhysicalActivityLevel(value);
        },
      ),
    );
  }
}
