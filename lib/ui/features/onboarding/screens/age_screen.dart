import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fithub/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:fithub/res/constants/constants.dart';
import 'package:fithub/ui/features/onboarding/components/onboarding_page.dart';
import 'package:fithub/ui/features/onboarding/widgets/wheel_scroll.dart';

@RoutePage()
class AgeScreen extends StatefulWidget {
  const AgeScreen({super.key});

  @override
  State<AgeScreen> createState() => _AgeScreenState();
}

class _AgeScreenState extends State<AgeScreen> {
  int selectedAge = 17;

  @override
  void initState() {
    AppMetrica.reportEvent('Open age screen');
    super.initState();
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