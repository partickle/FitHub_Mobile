import 'package:fithub/models/workout.dart';

class Course {
  final String id;
  final String name;
  final String level;
  final String description;
  final List<Workout> workouts;
 
  Course({
    required this.id,
    required this.name,
    required this.level,
    required this.description,
    required this.workouts
  });

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      id: json['id'],
      name: json['name'],
      level: json['level'],
      description: json['description'],
      workouts: json['workouts']
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'level': level,
      'description': description,
      'workouts': workouts
    };
  }
}
