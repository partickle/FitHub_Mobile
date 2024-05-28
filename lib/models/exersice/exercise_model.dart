import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_model.freezed.dart';
part 'exercise_model.g.dart';

@freezed
class Exercise with _$Exercise {

  factory Exercise({
    required int id,
    required int? workoutId,
    required int count,
    required String name,
    required String imageUrl,
    required String gifUrl,
    required bool isTime,
    required bool isComplete,
    required String description
  }) = _Exercise;

  factory Exercise.fromJson(Map<String, dynamic> json) => _$ExerciseFromJson(json);
}