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
      body: Stack(
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
          if (isBackBtn) Positioned(
            bottom: 35,
            left: 25,
            child: SizedBox(
              width: 55,
              height: 55,
              child: FloatingActionButton(
                foregroundColor: kTextColor,
                backgroundColor: kSecBackgroundColor,
                elevation: 0,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
                child: const Icon(Icons.arrow_back, size: 25),
              ),
            )
          )
        ],
      ),
      floatingActionButton: !(isNextBtn)? null: Padding(
        padding: const EdgeInsets.only(bottom: 20, right: 10),
        child: SizedBox(
          width: 120,
          height: 55,
          child: FloatingActionButton(
            foregroundColor: kSecTextColor,
            backgroundColor: kPrimaryColor,
            elevation: 0,
            onPressed: onPressed,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(padding: EdgeInsets.only(left: 12)),
                Text(nextBtnText, style: onboardNextButStyle),
                const Icon(Icons.arrow_right, size: 33)
              ],
            ),
          ),
        ),
      ),
    );
  }
}