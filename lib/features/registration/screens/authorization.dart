import 'package:fithub/features/registration/widgets/elements/input_line.dart';
import 'package:fithub/features/registration/widgets/registration_page.dart';
import 'package:flutter/material.dart';
import 'package:fithub/constants.dart';

class AuthorizationScreen extends StatefulWidget {
  const AuthorizationScreen({super.key});

  @override
  State<AuthorizationScreen> createState() => _AuthorizationScreenState();
}

class _AuthorizationScreenState extends State<AuthorizationScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: RegistrationPage(
                urlImage: 'assets/images/registration/authorization.png',
                title: 'Welcome ',
                secTitle: 'friend,',
                subTitle: 'Enter your account details or create\na new one and join us',
                buttonText: 'Login',
                isButton: true,
                isLogin: true,
                imageHeight: 0.65,
                onPressed: () {},
                child: InputLine(
                  name: 'Login',
                  validation: () {}
                )
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              height: MediaQuery.of(context).size.height * 6.5 / 13,
              child: ClipPath(
                clipper: TrapezoidClipper(),
                child: Container(
                  color: kBackgroundColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TrapezoidClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, size.height * 0.3);
    path.lineTo(0, size.height * 0.25);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.3);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}