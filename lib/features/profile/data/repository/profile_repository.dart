import 'package:shared_preferences/shared_preferences.dart';

class ProfileRepository {

  Future<Map<String, dynamic>> getUserData() async {
    final prefs = await SharedPreferences.getInstance();
    return {
      "is_male": prefs.getBool('is_male') ?? false,
      "age": prefs.getInt('age') ?? 0,
      "goal": prefs.getString('goal') ?? '',
      "physical_activity_level": prefs.getString('physical_activity_level') ?? '',
    };
  }

}