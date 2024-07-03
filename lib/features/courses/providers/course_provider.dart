import 'package:fithub/features/courses/data/models/course_model.dart';
import 'package:fithub/features/courses/data/models/workout_model.dart';
import 'package:fithub/features/courses/data/models/exercise_model.dart';
import 'package:fithub/features/courses/data/repository/course_repository.dart';
import 'package:fithub/features/courses/data/workout_data.dart';
import 'package:flutter/material.dart';

class CourseProvider with ChangeNotifier {
  final CourseRepository _repository;
  List<Course> _courses = [];

  List<Course> get courses => _courses;

  CourseProvider(this._repository) {
    _loadCourses();
  }

  void startCourse(Course course) {
    final updatedCourse = course.copyWith(isActive: true);
    _updateCourseInList(updatedCourse);
  }

  void completeCourse(Course course) {
    final updatedCourse = course.copyWith(isActive: false);
    _updateCourseInList(updatedCourse);
  }

  List<Course> getActiveCourses() {
    return _courses.where((course) => course.isActive).toList();
  }

  List<Course> getRecommendedCourses() {
    String level = 'Beginner';
    return _courses.where((course) => course.level == level).take(3).toList();
  }


  List<Course> getCoursesByLevel(String level) {
    return _courses.where((course) => course.level == level).toList();
  }

  void _updateCourseInList(Course updatedCourse) {
    _courses = _courses.map((course) {
      return course.id == updatedCourse.id ? updatedCourse : course;
    }).toList();
    _saveCourses();
    notifyListeners();
  }

  void _saveCourses() async {
    await _repository.saveCourses(_courses);
  }

  void _loadCourses() async {
    _courses = await _repository.loadCourses();
    notifyListeners();
  }

  double getDurationCourse(int courseId) {
    double duration = 0;
    for (var workout in _courses[courseId].workouts) {
      for (var exercise in workout.exercises) {
        duration += exercise.count.ceilToDouble();
      }
    }
    duration = duration / 60 / 60;
    return double.parse(duration.toStringAsFixed(1));
  }

  List<Workout> getWorkoutsByCourse(int courseId) {
    return _courses[courseId].workouts;
  }

  double getDurationWorkout(int workoutId) {
    int duration = 0;
    for (var exercise in workouts[workoutId].exercises) {
      duration += exercise.count;
    }
    double res = duration / 60;
    return double.parse(res.toStringAsFixed(1));
  }

  List<Exercise> getExercisesByWorkout(int workoutId) {
    return workouts[workoutId].exercises;
  }
}
