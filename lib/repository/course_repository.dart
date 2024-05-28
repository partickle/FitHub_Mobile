import 'dart:convert';
import 'package:fithub/models/course/course_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CourseRepository {
  Future<List<Course>> loadCourses() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? coursesJson = prefs.getStringList('courses');

    if (coursesJson != null) {
      return coursesJson.map((json) => Course.fromJson(jsonDecode(json))).toList();
    } else {
      return _initializeCourses();
    }
  }

  Future<void> saveCourses(List<Course> courses) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> coursesJson = courses.map((course) => jsonEncode(course.toJson())).toList();
    await prefs.setStringList('courses', coursesJson);
  }

  // List<Course> _initializeCourses() {
  //   return [
  //     Course(
  //       id: 1,
  //       name: ,
  //       level: level,
  //       imageUrl: imageUrl,
  //       isPremium: isPremium,
  //       isActive: isActive,
  //       isComplete: isComplete,
  //       workouts: workouts
  //     )
  //   ];
  // }
}
