import 'package:fithub/features/home/models/workout_model.dart';

class Course{
  final int id;
  final String name;
  final String level;
  final String imageUrl;
  final bool isPremium;
  final bool isActive;
  final bool isComplete;
  final List<Workout> workouts;

  Course({
    required this.id,
    required this.name,
    required this.level,
    required this.imageUrl,
    required this.isPremium,
    required this.isActive,
    required this.isComplete,
    required this.workouts
  });

}
