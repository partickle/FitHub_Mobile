import 'package:fithub/widgets/elements/down_back_button.dart';
import 'package:fithub/widgets/elements/next_button.dart';
import 'package:flutter/material.dart';
import 'package:fithub/constants.dart';

class OnboardingPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final String nextBtnText;
  final bool isBackBtn;
  final bool isNextBtn;
  final VoidCallback onPressed;
  final Widget child;

  const OnboardingPage({
    super.key,
    required this.title,
    required this.subtitle,
    required this.nextBtnText,
    required this.isBackBtn,
    required this.isNextBtn,
    required this.onPressed,
    required this.child
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        left: false,
        right: false,
        top: false,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Column(
                      children: [
                        Text(
                          title,
                          textAlign: TextAlign.center,
                          style: onboardingTitleStyle
                        ),
                        const SizedBox(height: 18),
                        Text(
                          subtitle,
                          textAlign: TextAlign.center,
                          style: onboardingSubtitleStyle
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 100),
                      child: Center(
                        child: child,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if (isBackBtn) const DownBackButton()
          ],
        ),
      ),
      floatingActionButton: !(isNextBtn)? null: NextButton(
        buttonText: nextBtnText,
        onPressed: onPressed
      )
    );
  }
}