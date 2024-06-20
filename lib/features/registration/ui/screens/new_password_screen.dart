import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fithub/features/registration/provider/new_password_provider.dart';
import 'package:fithub/features/registration/ui/widgets/input_field.dart';
import 'package:fithub/features/registration/ui/components/forgot_password_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@RoutePage()
class NewPasswordScreen extends StatefulWidget {
  final String email;

  const NewPasswordScreen({super.key, required this.email});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {

  final ScrollController _scrollController = ScrollController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  void initState() {
    AppMetrica.reportEvent('Open new password screen');
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<NewPasswordProvider>(context, listen: false);
    provider.emailController.text = widget.email;

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
              title: 'Enter New Password',
              subTitle: 'Enter your new password and\nafter confirm',
              buttonText: 'Accept',
              isSendCode: false,
              onPressed: () {
                debugPrint('Button pressed');
                provider.newPasswordController.text = _newPasswordController.text;
                debugPrint('New password: ${provider.newPasswordController.text}');
                debugPrint('Email: ${provider.emailController.text}');

                if (provider.formKey.currentState!.validate()) {
                  provider.resetPassword(context);
                } else {
                  debugPrint('Form validation failed');
                }
              },
              child: Column(
                children: [
                  InputField(
                    labelText: 'Password',
                    isObscure: true,
                    isEmail: false,
                    isPassword: true,
                    isTag: false,
                    controller: _newPasswordController,
                    passwordController: null
                  ),
                  InputField(
                    labelText: 'Password again',
                    isObscure: true,
                    isEmail: false,
                    isPassword: true,
                    isTag: false,
                    controller: _confirmPasswordController,
                    passwordController: _newPasswordController
                  )
                ],
              ),
            ),
          ),
        )
      )
    );
  }
}
