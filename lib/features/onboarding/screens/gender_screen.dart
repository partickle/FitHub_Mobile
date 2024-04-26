import 'package:auto_route/auto_route.dart';
import 'package:fithub/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:fithub/features/onboarding/widgets/onboarding_page.dart';
import 'package:fithub/features/onboarding/widgets/elements/gender_button.dart';

@RoutePage()
class GenderScreen extends StatefulWidget {
  const GenderScreen({super.key});

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  bool isMaleSelected = false;
  bool isFemaleSelected = false;
  
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