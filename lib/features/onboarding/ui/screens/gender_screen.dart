import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fithub/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:fithub/features/onboarding/ui/components/onboarding_page.dart';
import 'package:fithub/features/onboarding/ui/widgets/gender_button.dart';
import 'package:fithub/features/onboarding/data/repository/onboarding_repository.dart';

@RoutePage()
class GenderScreen extends StatefulWidget {
  const GenderScreen({super.key});

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  bool isMaleSelected = false;
  bool isFemaleSelected = false;
  final OnboardingRepository _repository = OnboardingRepository();

  @override
  void initState() {
    AppMetrica.reportEvent('Open gender screen');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return OnboardingPage(
      title: 'Tell us about yourself!', 
      subtitle: 'To give you a better experience we need\nto know your gender',
      nextBtnText: 'Next',
      isBackBtn: false,
      isNextBtn: isMaleSelected || isFemaleSelected, 
      onPressed: () {
        AutoRouter.of(context).push(const AgeRoute());
      }, 
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GenderButton(
            iconData: Icons.male,
            label: 'Male',
            isSelected: isMaleSelected,
            onPressed: () {
              _repository.setGender(true);
              setState(() {
                isMaleSelected = true;
                isFemaleSelected = false;
              });
            }
          ),
          const SizedBox(height: 24),
          GenderButton(
            iconData: Icons.female,
            label: 'Female',
            isSelected: isFemaleSelected,
            onPressed: () {
              _repository.setGender(false);
              setState(() {
                isMaleSelected = false;
                isFemaleSelected = true;
              });
            }
          ),
        ],
      ),
    );
  }
}
