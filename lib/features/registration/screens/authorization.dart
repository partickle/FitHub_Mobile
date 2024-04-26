import 'package:fithub/features/registration/widgets/registration_page.dart';
import 'package:flutter/material.dart';

class AuthorizationScreen extends StatefulWidget {
  const AuthorizationScreen({super.key});

  @override
  State<AuthorizationScreen> createState() => _AuthorizationScreenState();
}

class _AuthorizationScreenState extends State<AuthorizationScreen> {
  @override
  Widget build(BuildContext context) {
    return RegistrationPage(
      urlImage: 'assets/images/registration/authorization.png',
      title: 'Welcome',
      buttonText: 'Login',
      isButton: true,
      onPressed: () {},
      child: const Center()
    );
  }
}