import 'package:fithub/models/course/course_model.dart';
import 'package:fithub/data/workout_data.dart';

List<Course> courses = [
  Course(
    id: 0,
    name: 'Learn the Basics of Training',
    level: 'Workouts for Beginners',
    imageUrl: 'assets/icons/courses/1.jpg',
    isPremium: false,
    isActive: false,
    isComplete: false,
    workouts: [
      workouts[0].copyWith(courseId: 0),
      workouts[1].copyWith(courseId: 0)
    ]
  ),
  Course(
    id: 1,
    name: 'Wake Up Call',
    level: 'Workouts for Beginners',
    imageUrl: 'assets/icons/courses/2.jpg',
    isPremium: false,
    isActive: false,
    isComplete: false,
    workouts: [
      workouts[0].copyWith(courseId: 1),
      workouts[1].copyWith(courseId: 1)
    ]
  ),
  Course(
    id: 2,
    name: 'Full Body Goal Crusher',
    level: 'Workouts for Intermediate',
    imageUrl: 'assets/icons/courses/3.jpg',
    isPremium: false,
    isActive: false,
    isComplete: false,
    workouts: [
      workouts[0].copyWith(courseId: 2),
      workouts[1].copyWith(courseId: 2)
    ]
  ),
  Course(
    id: 3,
    name: 'Lower Body Streng',
    level: 'Workouts for Advaced',
    imageUrl: 'assets/icons/courses/4.jpg',
    isPremium: false,
    isActive: false,
    isComplete: false,
    workouts: [
      workouts[0].copyWith(courseId: 3),
      workouts[1].copyWith(courseId: 3)
    ]
  )
];