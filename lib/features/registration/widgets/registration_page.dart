import 'package:fithub/widgets/elements/down_back_button.dart';
import 'package:fithub/features/registration/widgets/elements/maybe_later_button.dart';
import 'package:fithub/widgets/elements/next_button.dart';
import 'package:flutter/material.dart';
import 'package:fithub/constants.dart';
import 'package:fithub/features/registration/widgets/elements/usual_text_button.dart';
import 'package:fithub/features/registration/screens/authorization_screen.dart';
import 'package:fithub/features/registration/screens/first_registration_screen.dart';

class RegistrationPage extends StatelessWidget {
  final String urlImage;
  final String title;
  final String secTitle;
  final String subTitle;
  final String buttonText;
  final bool isMaybeBtn;
  final bool isLoginPage;
  final double imageHeight;
  final VoidCallback onPressed;
  final Widget child;

  const RegistrationPage({
    super.key,
    required this.urlImage,
    required this.title,
    required this.secTitle,
    required this.subTitle,
    required this.buttonText,
    required this.isMaybeBtn,
    required this.isLoginPage,
    required this.imageHeight,
    required this.onPressed,
    required this.child
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        left: false,
        right: false,
        bottom: true,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              children: [
                Image.asset(
                  urlImage,
                  height: MediaQuery.of(context).size.height * imageHeight,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: child,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 30),
              child: Align(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    UsualTextButton(
                      text: 'Login',
                      isSelected: isLoginPage,
                      isActive: !isLoginPage,
                      mainColor: kTextColor,
                      tapColor: kPrimaryColor,
                      onTap: () {
                        // AutoRouter.of(context).replace(AuthorizationRoute());
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (BuildContext context) => const AuthorizationScreen())
                        );
                      }
                    ),
                    const SizedBox(width: 30),
                    UsualTextButton(
                      text: 'Sing up',
                      isSelected: !isLoginPage,
                      isActive: isLoginPage,
                      mainColor: kTextColor,
                      tapColor: kPrimaryColor,
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (BuildContext context) => const FirstRegistrationScreen())
                        );
                        // AutoRouter.of(context).replace(RegistrationRoute());
                      }
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * imageHeight - 200,
              right: 0,
              bottom: 0, 
              left: 30,
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: title,
                            style: welcomeUpStyle
                          ),
                          TextSpan(
                            text: secTitle,
                            style: welcomeDownStyle
                          )
                        ]
                      )
                    ),
                    const SizedBox(height: 20),
                    Text(subTitle, style: registerSubtitleStyle),
                  ],
                ),
              )
            ),
            isMaybeBtn ? const MaybeLaterButton() : const DownBackButton()
          ],
        ),
      ),
      floatingActionButton: NextButton(
        buttonText: buttonText,
        onPressed: onPressed
      )
    );
  }
}