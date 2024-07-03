import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:flutter/material.dart';
import 'package:fithub/res/constants/constants.dart';
import 'package:fithub/features/onboarding/ui/components/onboarding_page.dart';
import 'package:fithub/features/onboarding/ui/widgets/wheel_scroll.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fithub/router/app_router.dart';
import 'package:fithub/features/onboarding/data/repository/onboarding_repository.dart';

@RoutePage()
class LevelScreen extends StatefulWidget {
  const LevelScreen({super.key});

  @override
  State<LevelScreen> createState() => _LevelScreenState();
}

class _LevelScreenState extends State<LevelScreen> {
  final OnboardingRepository _repository = OnboardingRepository();
  int initialItem = 1;

  @override
  void initState() {
    AppMetrica.reportEvent('Open level screen');
    super.initState();
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
        _repository.setLevel(_repository.toSnakeCase(levels[initialItem]));
        AutoRouter.of(context).popUntilRoot();
        AutoRouter.of(context).replace(const AuthorizationRoute());
      }, 
      child: OnboardingWheelScroll(
        initialItem: initialItem,
        itemExtent: 60,
        widthBorder: 300,
        textStyle: onboardStrScrollStyle,
        list: levels,
        onSelectedItemChanged: (value) {
          setState(() {
            initialItem = value;
          });
        },
      ),
    );
  }
}
