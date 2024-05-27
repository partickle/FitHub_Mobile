import 'package:fithub/features/home/models/exercise_model.dart';

class Workout{
  final int id;
  final int courseId;
  final String name;
  final String description;
  final String imageUrl;
  final bool isComplete;
  final List<Exercise> exercises;
  
  Workout({
    required this.id,
    required this.courseId,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.isComplete,
    required this.exercises
  });

}