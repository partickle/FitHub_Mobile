import 'package:fithub/features/registration/screens/verification_screen.dart';
import 'package:fithub/features/registration/widgets/elements/input_field.dart';
import 'package:fithub/features/registration/widgets/forgot_password_page.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _formKey = GlobalKey<FormState>();

  final ScrollController _scrollController = ScrollController();
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _scrollController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          controller: _scrollController,
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ForgotPasswordPage(
              title: 'Forgot Password?',
              subTitle: 'Enter your information below or\nlogin with a other account',
              buttonText: 'Send',
              isSendCode: false,
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => const VerificationScreen()
                    )
                  );
                }
              },
              child: InputField(
                labelText: 'Email',
                isObscure: false,
                isEmail: true,
                isPassword: false,
                isTag: false,
                controller: _emailController,
                passwordController: null
              ),
            ),
          ),
        )
      )
    );
  }
}