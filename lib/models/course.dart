import 'package:fithub/models/workout.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@freezed
class Course {
  Course({
    required int id,
    required String name,
    required String level,
    required String imageUrl,
    required bool isPremium,
    required List<Workout> workouts
  }) => _Course;

  factory Course.fromJson(Map<String, dynamic> json) {}
}
