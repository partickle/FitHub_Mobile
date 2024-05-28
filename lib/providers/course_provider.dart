import 'package:fithub/models/course/course_model.dart';
import 'package:fithub/repository/course_repository.dart';
import 'package:flutter/material.dart';

class CourseProvider with ChangeNotifier {
  final CourseRepository _repository;
  List<Course> _courses = [];

  List<Course> get courses => _courses;
  List<Course> get activeCourses => _courses.where((course) => course.isActive).toList();

  CourseProvider(this._repository) {
    _loadCourses();
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
    await _repository.saveCourses(_courses);
  }

  void _loadCourses() async {
    _courses = await _repository.loadCourses();
    notifyListeners();
  }
}
