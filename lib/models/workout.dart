import 'package:fithub/models/exercise.dart';

class Workout { 
  Workout({
    required int id,
    required int courseId,
    required String name,
    required String description,
    required String imageUrl,
    required List<Exercise> exercises,
  });

  factory Workout.fromJson(Map<String, dynamic> json) {}
}