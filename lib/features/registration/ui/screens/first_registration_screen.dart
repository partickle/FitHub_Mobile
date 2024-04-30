import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fithub/router/app_router.dart';
import 'package:fithub/features/registration/ui/widgets/input_field.dart';
import 'package:fithub/features/registration/ui/components/registration_page.dart';
import 'package:flutter/material.dart';
import 'package:fithub/constants.dart';

@RoutePage()
class FirstRegistrationScreen extends StatefulWidget {
  const FirstRegistrationScreen({super.key});

  @override
  State<FirstRegistrationScreen> createState() => _FirstRegistrationScreenState();
}

class _FirstRegistrationScreenState extends State<FirstRegistrationScreen> {
  final _formKey = GlobalKey<FormState>();

  final ScrollController _scrollController = ScrollController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordAgainController = TextEditingController();

  @override
  void initState() {
    AppMetrica.reportEvent('Open first registration screen');
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _passwordAgainController.dispose();
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
                  title: 'Hello ',
                  secTitle: 'rookies,',
                  subTitle: 'Enter your informations below or\nlogin with a other account',
                  buttonText: 'Next',
                  isMaybeBtn: true,
                  isLoginPage: false,
                  imageHeight: 0.5,
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      AutoRouter.of(context).push(const SecondRegistrationRoute());
                    }
                  },
                  child: Column(
                    children: [
                      InputField(
                        labelText: 'Email',
                        isObscure: false,
                        isEmail: true,
                        isPassword: false,
                        isTag: false,
                        controller: _emailController,
                        passwordController: null
                      ),
                      InputField(
                        labelText: 'Password',
                        isObscure: true,
                        isEmail: false,
                        isPassword: true,
                        isTag: false,
                        controller: _passwordController,
                        passwordController: null
                      ),
                      InputField(
                        labelText: 'Password again',
                        isObscure: true,
                        isEmail: false,
                        isPassword: true,
                        isTag: false,
                        controller: _passwordAgainController,
                        passwordController: _passwordController
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