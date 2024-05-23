import 'package:fithub/models/exercise.dart';

class Workout {
  final String id;
  final String name;
  final String? courseName;
  final String description;
  final List<Exercise> exercises;
 
  Workout({
    required this.id,
    required this.name,
    required this.courseName,
    required this.description,
    required this.exercises
  });

  factory Workout.fromJson(Map<String, dynamic> json) {
    return Workout(
      id: json['id'],
      name: json['name'],
      courseName: json['course_name'],
      description: json['description'],
      exercises: json['exercises']
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'course_name': courseName,
      'description': description,
      'exercises': exercises
    };
  }
}