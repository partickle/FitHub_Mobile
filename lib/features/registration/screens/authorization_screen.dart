import 'package:fithub/features/registration/widgets/elements/input_field.dart';
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
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
                child: Column(
                  children: [
                    InputField(
                      labelText: 'Email',
                      isObscure: false,
                      isEmail: true,
                      isPassword: false,
                      isTag: false,
                      controller: _emailController
                    ),
                    InputField(
                      labelText: 'Password',
                      isObscure: true,
                      isEmail: false,
                      isPassword: true,
                      isTag: false,
                      controller: _passwordController
                    )
                  ],
                )
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              height: MediaQuery.of(context).size.height * 6.48 / 13,
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