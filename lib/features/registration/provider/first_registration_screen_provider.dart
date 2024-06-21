import 'package:flutter/material.dart';
import 'package:fithub/features/registration/data/repository/registration_repository.dart';
import 'package:fithub/router/app_router.dart';
import 'package:auto_route/auto_route.dart';

class FirstRegistrationScreenProvider extends ChangeNotifier {
  final RegistrationRepository _registrationRepository;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordAgainController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  FirstRegistrationScreenProvider(this._registrationRepository);

  Future<void> registerFirstPart(BuildContext context) async {
    if (formKey.currentState?.validate() ?? false) {
      if (passwordController.text == passwordAgainController.text) {
        try {
          _registrationRepository.setFirstPartRegistrationData(
            emailController.text, passwordController.text
          );
          AutoRouter.of(context).push(const SecondRegistrationRoute());
        } catch (e) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Registration failed: $e')));
        }
      }
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    passwordAgainController.dispose();
    super.dispose();
  }
}
