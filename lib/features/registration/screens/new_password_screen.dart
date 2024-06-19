import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fithub/features/registration/widgets/input_field.dart';
import 'package:fithub/features/registration/components/forgot_password_page.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  final _formKey = GlobalKey<FormState>();

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
              title: 'Enter New Password',
              subTitle: 'Enter your new password and\nafter confirm',
              buttonText: 'Accept',
              isSendCode: false,
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  AppMetrica.reportEvent('Change password complete');
                  AutoRouter.of(context).popUntilRoot();
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