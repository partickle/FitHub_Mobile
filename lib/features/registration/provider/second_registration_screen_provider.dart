import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:fithub/features/profile/data/repository/profile_repository.dart';
import 'package:fithub/features/profile/domain/user_data_request/user_data_request.dart';
import 'package:fithub/features/registration/domain/message_response/message_response.dart';
import 'package:flutter/material.dart';
import 'package:fithub/features/registration/data/repository/registration_repository.dart';
import 'package:fithub/features/registration/domain/user_registration_request/user_registration_request.dart';
import 'package:fithub/router/app_router.dart';
import 'package:auto_route/auto_route.dart';

class SecondRegistrationScreenProvider extends ChangeNotifier {
  final RegistrationRepository _registrationRepository;
  final ProfileRepository _profileRepository;
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController userTagController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  SecondRegistrationScreenProvider(this._registrationRepository, this._profileRepository);

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> register(BuildContext context) async {
    if (formKey.currentState?.validate() ?? false) {
      _setLoading(true);
      try {
        var regData = await _registrationRepository.getFirstPartRegistrationData();
        var userData = await _profileRepository.getUserData();

        final request = UserRegistrationRequest(
          email: regData['email'] ?? '',
          password: regData['password'] ?? '',
          firstName: firstNameController.text,
          lastName: lastNameController.text,
          username: userTagController.text,
          profile: UserDataRequest(
            isMale: userData['is_male'],
            age: userData['age'],
            goal: userData['goal'],
            physicalActivityLevel: userData['physical_activity_level'],
          ),
        );

        final MessageResponse responce =  await _registrationRepository.register(request: request);

        _registrationRepository.clearFirstPartRegistrationData();

        _setLoading(false);
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(responce.message)));

        AppMetrica.reportEvent('Registration complete');
        AutoRouter.of(context).popUntilRoot();
        AutoRouter.of(context).replace(const AuthorizationRoute());
      } catch (e) {
        _setLoading(false);
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Registration failed: $e')));
      }
    }
  }

  void _setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    userTagController.dispose();
    super.dispose();
  }
}
