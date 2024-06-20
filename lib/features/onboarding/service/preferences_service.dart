import 'package:shared_preferences/shared_preferences.dart';

class PreferencesService {
  // Сохранение данных профиля пользователя с экранов onboarding
  Future<void> setUserProfile(bool isMale, int age, String goal, String physicalActivityLevel) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setBool('is_male', isMale);
    await preferences.setInt('age', age);
    await preferences.setString('goal', goal);
    await preferences.setString('physical_activity_level', physicalActivityLevel);
  }

  // Извлечение данных профиля пользователя
  Future<Map<String, dynamic>> getUserProfile() async {
    final preferences = await SharedPreferences.getInstance();
    return {
      "is_male": preferences.getBool('is_male') ?? false,
      "age": preferences.getInt('age') ?? 0,
      "goal": preferences.getString('goal') ?? '',
      "physical_activity_level": preferences.getString('physical_activity_level') ?? '',
    };
  }

  // Сохранение регистрационных данных пользователя
  Future<void> setRegistrationData(String email, String password, String firstName, String lastName, String username) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setString('email', email);
    await preferences.setString('password', password);
    await preferences.setString('first_name', firstName);
    await preferences.setString('last_name', lastName);
    await preferences.setString('username', username);
  }

  Future<void> updateRegistrationData(String firstName, String lastName, String userTag) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setString('first_name', firstName);
    await preferences.setString('last_name', lastName);
    await preferences.setString('username', userTag);
  }

  // Извлечение регистрационных данных пользователя
  Future<Map<String, dynamic>> getRegistrationData() async {
    final preferences = await SharedPreferences.getInstance();
    return {
      "email": preferences.getString('email') ?? '',
      "password": preferences.getString('password') ?? '',
      "first_name": preferences.getString('first_name') ?? '',
      "last_name": preferences.getString('last_name') ?? '',
      "username": preferences.getString('username') ?? '',
    };
  }

  // Извлечение email пользователя
  Future<String> getEmail() async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.getString('email') ?? '';
  }

  // Логирование данных
  Future<void> logPreferences() async {
    final preferences = await SharedPreferences.getInstance();
    print('Email: ${preferences.getString('email')}');
    print('Password: ${preferences.getString('password')}');
    print('First Name: ${preferences.getString('first_name')}');
    print('Last Name: ${preferences.getString('last_name')}');
    print('Username: ${preferences.getString('username')}');
    print('Is Male: ${preferences.getBool('is_male')}');
    print('Age: ${preferences.getInt('age')}');
    print('Goal: ${preferences.getString('goal')}');
    print('Physical Activity Level: ${preferences.getString('physical_activity_level')}');
  }
}
