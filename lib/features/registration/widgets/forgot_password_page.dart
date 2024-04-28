import 'package:fithub/constants.dart';
import 'package:fithub/features/registration/widgets/elements/usual_text_button.dart';
import 'package:fithub/widgets/elements/center_elevated_button.dart';
import 'package:fithub/widgets/elements/up_back_button.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  final String title;
  final String subTitle;
  final String buttonText;
  final bool isSendCode;
  final VoidCallback onPressed;
  final Widget child;

  const ForgotPasswordPage({
    super.key,
    required this.title,
    required this.subTitle,
    required this.buttonText,
    required this.isSendCode,
    required this.onPressed,
    required this.child
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        left: true,
        right: true,
        bottom: true,
        child: Stack(
          fit: StackFit.expand,
          children: [
            const UpBackButton(isLeft: true, isTransparent: false),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 90 + MediaQuery.of(context).padding.top, left: 30),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: onboardingTitleStyle),
                      const SizedBox(height: 20),
                      (isSendCode)
                       ? Text('You entered the wrong code.', style: registerSubtitleStyle.copyWith(color: kErrorColor))
                       : Text(subTitle, style: registerSubtitleStyle)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: child
                  ),
                ),
              ],
            ),
            if (isSendCode) Padding(
              padding: const EdgeInsets.only(bottom: 110),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: UsualTextButton(
                  text: 'Send code again',
                  isSelected: false,
                  isActive: true,
                  mainColor: kPrimaryColor,
                  tapColor: kPressedColor,
                  onTap: () {}
                ),
              ),
            ),
            CenterElevatedButton(
              buttonText: buttonText,
              onPressed: onPressed
            )
          ],
        )
      ),
    );
  }
}