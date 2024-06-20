import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fithub/features/registration/provider/forgot_password_screen_provider.dart';
import 'package:fithub/router/app_router.dart';
import 'package:fithub/features/registration/ui/widgets/input_field.dart';
import 'package:fithub/features/registration/ui/components/forgot_password_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@RoutePage()
class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _emailController = TextEditingController();

  @override
  void initState() {
    AppMetrica.reportEvent('Open forgot password screen');
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ForgotPasswordProvider>(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: provider.formKey,
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
                if (provider.formKey.currentState!.validate()) {
                  provider.sendActivationEmail(context).then((_) {
                    AutoRouter.of(context).push(
                      VerificationRoute(email: _emailController.text),
                    );
                  });
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
