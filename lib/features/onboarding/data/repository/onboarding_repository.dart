import 'package:shared_preferences/shared_preferences.dart';

class OnboardingRepository {
  Future<void> setGender(bool isMale) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setBool('is_male', isMale);
  }

  Future<void> setAge(int age) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setInt('age', age);
  }
  
  Future<void> setGoal(String goal) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setString('goal', goal);
  }

  Future<void> setLevel(String physicalActivityLevel) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setString('physical_activity_level', physicalActivityLevel);
  }

  String toSnakeCase(String input) {
    final RegExp exp = RegExp(r'([a-z0-9])([A-Z])');
    final String snakeCased = input
        .replaceAllMapped(exp, (Match m) => '${m[1]}_${m[2]}')
        .replaceAll(' ', '_')
        .toLowerCase();
    return snakeCased;
  }
}
