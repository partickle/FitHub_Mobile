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
          if (isBackBtn) Positioned(
            bottom: 35,
            left: 25,
            child: SizedBox(
              width: 55,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10),
                  foregroundColor: kTextColor,
                  backgroundColor: kSecBackgroundColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Icon(Icons.arrow_back, size: 25),
              ),
            )
          )
        ],
      ),
      floatingActionButton: !(isNextBtn)? null: Padding(
        padding: const EdgeInsets.only(bottom: 20, right: 10),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              foregroundColor: kSecTextColor,
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28),
              ),
            ),
            onPressed: onPressed,
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
    );
  }
}