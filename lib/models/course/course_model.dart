import 'package:fithub/models/workout/workout_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_model.freezed.dart';
part 'course_model.g.dart';

@freezed
class Course with _$Course {

  factory Course({
    required int id,
    required String name,
    required String level,
    required String imageUrl,
    required bool isPremium,
    required bool isActive,
    required bool isComplete,
    required List<Workout> workouts
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
}