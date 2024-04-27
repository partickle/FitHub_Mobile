import 'package:fithub/features/registration/widgets/registration_page.dart';
import 'package:flutter/material.dart';
import 'package:fithub/constants.dart';

class SecondRegistrationScreen extends StatefulWidget {
  const SecondRegistrationScreen({super.key});

  @override
  State<SecondRegistrationScreen> createState() => _SecondRegistrationScreenState();
}

class _SecondRegistrationScreenState extends State<SecondRegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        RegistrationPage(
          urlImage: 'assets/images/registration/registration.png',
          title: 'That\'s ',
          secTitle: 'almost all,',
          subTitle: 'It remains to enter only your full name\nand a unique user tag',
          buttonText: 'Sign up',
          isButton: true,
          isLogin: false,
          imageHeight: 0.55,
          onPressed: () {},
          child: const Center()
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          height: MediaQuery.of(context).size.height * 8 / 13,
          child: ClipPath(
            clipper: TrapezoidClipper(),
            child: Container(
              color: kBackgroundColor,
            ),
          ),
        ),
      ],
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