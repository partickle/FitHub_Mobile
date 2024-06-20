import 'package:fithub/features/courses/data/models/workout_model.dart';
import 'package:fithub/features/courses/data/exercise_data.dart';

List<Workout> workouts = [
  Workout(
    id: 0,
    courseId: null,
    title: 'Simple Warm Up',
    description: 'A basic and necessary full-body stretching workout. Many people ignore such workouts, not realizing their importance, however, to avoid injury and muscle growth, they are simply necessary.',
    imageUrl: '',
    isComplete: false,
    exercises: [
      exercises[0].copyWith(workoutId: 0),
      exercises[1].copyWith(workoutId: 0)
    ]
  ),
  Workout(
    id: 1,
    courseId: null,
    title: 'Stability Training Basics',
    description: 'A basic and necessary full-body stretching workout. Many people ignore such workouts, not realizing their importance, however, to avoid injury and muscle growth, they are simply necessary.',
    imageUrl: '',
    isComplete: false,
    exercises: [
      exercises[0].copyWith(workoutId: 0),
      exercises[1].copyWith(workoutId: 0)
    ]
  )
];
