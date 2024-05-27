// lib/providers/course_provider.dart

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/course.dart';

class CourseProvider with ChangeNotifier {
  List<Course> _courses = [];

  List<Course> get courses => _courses;
  List<Course> get activeCourses => _courses.where((course) => course.isActive).toList();

  CourseProvider() {
    _loadCourses();
  }

  void initializeCourses() {
    _courses = [
      Course(title: 'Beginner Course 1', description: 'Description 1', level: 'beginner'),
      Course(title: 'Intermediate Course 1', description: 'Description 1', level: 'intermediate'),
      Course(title: 'Advanced Course 1', description: 'Description 1', level: 'advanced'),
    ];
    _saveCourses();
    notifyListeners();
  }

  void startCourse(Course course) {
    course.isActive = true;
    _saveCourses();
    notifyListeners();
  }

  void completeCourse(Course course) {
    course.isActive = false;
    _saveCourses();
    notifyListeners();
  }

  List<Course> getCoursesByLevel(String level) {
    return _courses.where((course) => course.level == level).toList();
  }

  void _saveCourses() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> coursesJson = _courses.map((course) => jsonEncode(course.toJson())).toList();
    await prefs.setStringList('courses', coursesJson);
  }

  void _loadCourses() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? coursesJson = prefs.getStringList('courses');

    if (coursesJson != null) {
      _courses = coursesJson.map((json) => Course.fromJson(jsonDecode(json))).toList();
    } else {
      initializeCourses();
    }

    notifyListeners();
  }
}
