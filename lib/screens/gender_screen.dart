import 'package:flutter/material.dart';
import 'package:fithub/constants.dart';
import 'package:fithub/widgets/gender_button.dart';
import 'package:fithub/screens/age_screen.dart';

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
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 100),
              child: Column(
                children: [
                  Text(
                    'Tell us about yourself!',
                    style: onboardingTitleStyle
                  ),
                  SizedBox(height: 18),
                  Text(
                    'To give you a better experience we need\nto know your gender',
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
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: !(isMaleSelected || isFemaleSelected)? null: Padding(
        padding: const EdgeInsets.only(bottom: 20, right: 10),
        child: SizedBox(
          width: 120,
          height: 55,
          child: FloatingActionButton(
            foregroundColor: kSecTextColor,
            backgroundColor: kPrimaryColor,
            onPressed: () async {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const AgeScreen()),
              );
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(padding: EdgeInsets.only(left: 12)),
                Text('Next', style: onboardNextButStyle),
                Icon(Icons.arrow_right, size: 33)
              ],
            ),
          ),
        ),
      ),
    );
  }
}