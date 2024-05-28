import 'package:fithub/models/exersice/exercise_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_model.freezed.dart';
part 'workout_model.g.dart';

@freezed
class Workout with _$Workout {

  factory Workout({
    required int id,
    required int? courseId,
    required String name,
    required String description,
    required String imageUrl,
    required bool isComplete,
    required List<Exercise> exercises
  }) = _Workout;

  factory Workout.fromJson(Map<String, dynamic> json) => _$WorkoutFromJson(json);
}