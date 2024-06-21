import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fithub/features/registration/provider/authorization_screen_provider.dart';
import 'package:fithub/features/registration/ui/widgets/input_field.dart';
import 'package:fithub/features/registration/ui/widgets/usual_text_button.dart';
import 'package:fithub/features/registration/ui/components/registration_page.dart';
import 'package:flutter/material.dart';
import 'package:fithub/res/constants/constants.dart';
import 'package:provider/provider.dart';

@RoutePage()
class AuthorizationScreen extends StatefulWidget {
  const AuthorizationScreen({super.key});

  @override
  State<AuthorizationScreen> createState() => _AuthorizationScreenState();
}

class _AuthorizationScreenState extends State<AuthorizationScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    AppMetrica.reportEvent('Open authorization screen');
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AuthorizationScreenProvider>(context);

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
                  urlImage: 'assets/images/registration/authorization.png',
                  title: 'Welcome ',
                  secTitle: 'friend,',
                  subTitle: 'Enter your account details or create\na new one and join us',
                  buttonText: 'Login',
                  isMaybeBtn: true,
                  isLoginPage: true,
                  imageHeight: 0.55,
                  onPressed: () => provider.login(context),
                  child: provider.isLoading
                      ? const Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            height: 200,
                            child: Center(child: CircularProgressIndicator())
                          )
                        )
                      : Column(
                          children: [
                            InputField(
                              labelText: 'Email',
                              isObscure: false,
                              isEmail: true,
                              isPassword: false,
                              isTag: false,
                              controller: provider.emailController,
                              passwordController: null
                            ),
                            InputField(
                              labelText: 'Password',
                              isObscure: true,
                              isEmail: false,
                              isPassword: true,
                              isTag: false,
                              controller: provider.passwordController,
                              passwordController: null
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 45, top: 20),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: UsualTextButton(
                                  text: 'Forgot Password',
                                  isSelected: false,
                                  isActive: true,
                                  mainColor: kPrimaryColor,
                                  tapColor: kPressedColor,
                                  onTap: () {
                                    provider.navigateToForgotPassword(context);
                                  }
                                ),
                              ),
                            )
                          ],
                        ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                height: MediaQuery.of(context).size.height * 8.1 / 13,
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
