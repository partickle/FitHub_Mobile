import 'dart:convert';
import 'package:fithub/data/models/course/course_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fithub/data/course_data.dart';

class CourseRepository {
  Future<List<Course>> loadCourses() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? coursesJson = prefs.getStringList('courses');

    if (coursesJson != null) {
      return coursesJson.map((json) => Course.fromJson(jsonDecode(json))).toList();
    } else {
      return courses;
    }
  }

  Future<void> saveCourses(List<Course> courses) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> coursesJson = courses.map((course) => jsonEncode(course.toJson())).toList();
    await prefs.setStringList('courses', coursesJson);
  }
}
