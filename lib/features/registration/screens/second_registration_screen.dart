import 'package:auto_route/auto_route.dart';
import 'package:fithub/features/registration/widgets/elements/input_field.dart';
import 'package:fithub/features/registration/widgets/registration_page.dart';
import 'package:flutter/material.dart';
import 'package:fithub/constants.dart';

@RoutePage()
class SecondRegistrationScreen extends StatefulWidget {
  const SecondRegistrationScreen({super.key});

  @override
  State<SecondRegistrationScreen> createState() => _SecondRegistrationScreenState();
}

class _SecondRegistrationScreenState extends State<SecondRegistrationScreen> {
  final _formKey = GlobalKey<FormState>();

  final ScrollController _scrollController = ScrollController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _userTagController = TextEditingController();

  @override
  void dispose() {
    _scrollController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _userTagController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: RegistrationPage(
                  urlImage: 'assets/images/registration/registration.png',
                  title: 'That\'s ',
                  secTitle: 'almost all,',
                  subTitle: 'It remains to enter only your full name\nand a unique user tag',
                  buttonText: 'Sing up',
                  isMaybeBtn: false,
                  isLoginPage: false,
                  imageHeight: 0.5,
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {}
                  },
                  child: Column(
                    children: [
                      InputField(
                        labelText: 'First name',
                        isObscure: false,
                        isEmail: false,
                        isPassword: false,
                        isTag: false,
                        controller: _firstNameController,
                        passwordController: null
                      ),
                      InputField(
                        labelText: 'Last name',
                        isObscure: false,
                        isEmail: false,
                        isPassword: false,
                        isTag: false,
                        controller: _lastNameController,
                        passwordController: null
                      ),
                      InputField(
                        labelText: 'User tag',
                        isObscure: false,
                        isEmail: false,
                        isPassword: false,
                        isTag: true,
                        controller: _userTagController,
                        passwordController: null
                      )
                    ],
                  )
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                height: MediaQuery.of(context).size.height * 9 / 13,
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