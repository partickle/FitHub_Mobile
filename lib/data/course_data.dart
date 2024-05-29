import 'package:fithub/data/models/course/course_model.dart';
import 'package:fithub/data/workout_data.dart';
import 'package:fithub/constants.dart';

List<Course> courses = [
  Course(
    id: 0,
    title: 'Learn the Basics of Training',
    subtitle: 'Workouts for Beginners',
    level: levels[0],
    imageUrl: 'assets/images/courses/1.jpg',
    isPremium: true,
    isActive: false,
    isComplete: false,
    workouts: [
      workouts[0].copyWith(courseId: 0),
      workouts[1].copyWith(courseId: 0)
    ]
  ),
  Course(
    id: 1,
    title: 'Wake Up Call',
    subtitle: 'Workouts for Beginners',
    level: levels[0],
    imageUrl: 'assets/images/courses/2.jpg',
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
    title: 'Full Body Goal Crusher',
    subtitle: 'Workouts for Intermediate',
    level: levels[1],
    imageUrl: 'assets/images/courses/3.jpg',
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
    title: 'Lower Body Strength',
    subtitle: 'Workouts for Advace',
    level: levels[2],
    imageUrl: 'assets/images/courses/4.jpg',
    isPremium: false,
    isActive: false,
    isComplete: false,
    workouts: [
      workouts[0].copyWith(courseId: 3),
      workouts[1].copyWith(courseId: 3)
    ]
  ),
  Course(
    id: 4,
    title: 'Wake Up Call',
    subtitle: 'Workouts for Beginners',
    level: levels[0],
    imageUrl: 'assets/images/courses/2.jpg',
    isPremium: false,
    isActive: false,
    isComplete: false,
    workouts: [
      workouts[0].copyWith(courseId: 1),
      workouts[1].copyWith(courseId: 1)
    ]
  ),
  Course(
    id: 5,
    title: 'Wake Up Call',
    subtitle: 'Workouts for Beginners',
    level: levels[0],
    imageUrl: 'assets/images/courses/2.jpg',
    isPremium: false,
    isActive: false,
    isComplete: false,
    workouts: [
      workouts[0].copyWith(courseId: 1),
      workouts[1].copyWith(courseId: 1)
    ]
  ),
];