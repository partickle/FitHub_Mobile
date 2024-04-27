import 'package:flutter/material.dart';
import 'package:fithub/constants.dart';
import 'package:fithub/features/registration/widgets/elements/login_button.dart';
import 'package:fithub/features/registration/screens/authorization.dart';
import 'package:fithub/features/registration/screens/first_registration.dart';

class RegistrationPage extends StatelessWidget {
  final String urlImage;
  final String title;
  final String secTitle;
  final String subTitle;
  final String buttonText;
  final bool isButton;
  final bool isLogin;
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
    required this.isButton,
    required this.isLogin,
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
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: child,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 30),
              child: Align(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    LoginButton(
                      text: 'Login',
                      isSelected: isLogin,
                      onTap: () {
                        // AutoRouter.of(context).replace(AuthorizationRoute());
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (BuildContext context) => const AuthorizationScreen())
                        );
                      }
                    ),
                    const SizedBox(width: 30),
                    LoginButton(
                      text: 'Sing up',
                      isSelected: !isLogin,
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
            Padding(
              padding: const EdgeInsets.only(left: 25, bottom: 37),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    foregroundColor: kSecBackgroundColor,
                    elevation: 0
                  ),
                  onPressed: () {
                    // AutoRouter.of(context).replace(HomeRoute());
                  },
                  child: Text(
                    'Maybe later',
                    style: registerMaybeStyle.copyWith(color: kTextColor),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: !(isButton)? null: Padding(
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
              Text(buttonText, style: onboardNextButStyle),
              const Icon(Icons.arrow_right, size: 33)
            ],
          ),
        ),
      ),
    );
  }
}