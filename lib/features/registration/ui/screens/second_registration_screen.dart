import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fithub/features/registration/ui/widgets/input_field.dart';
import 'package:fithub/features/registration/ui/components/registration_page.dart';
import 'package:flutter/material.dart';
import 'package:fithub/res/constants/constants.dart';
import 'package:provider/provider.dart';
import 'package:fithub/features/registration/provider/second_registration_screen_provider.dart';

@RoutePage()
class SecondRegistrationScreen extends StatefulWidget {
  const SecondRegistrationScreen({super.key});

  @override
  State<SecondRegistrationScreen> createState() => _SecondRegistrationScreenState();
}

class _SecondRegistrationScreenState extends State<SecondRegistrationScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    AppMetrica.reportEvent('Open second registration screen');
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SecondRegistrationScreenProvider>(context, listen: false);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Form(
        key: provider.formKey,
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
                  buttonText: 'Sign up',
                  isMaybeBtn: false,
                  isLoginPage: false,
                  imageHeight: 0.5,
                  onPressed: () => provider.register(context),
                  child: Column(
                    children: [
                      InputField(
                        labelText: 'First name',
                        isObscure: false,
                        isEmail: false,
                        isPassword: false,
                        isTag: false,
                        controller: provider.firstNameController,
                        passwordController: null
                      ),
                      InputField(
                        labelText: 'Last name',
                        isObscure: false,
                        isEmail: false,
                        isPassword: false,
                        isTag: false,
                        controller: provider.lastNameController,
                        passwordController: null
                      ),
                      InputField(
                        labelText: 'User tag',
                        isObscure: false,
                        isEmail: false,
                        isPassword: false,
                        isTag: true,
                        controller: provider.userTagController,
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