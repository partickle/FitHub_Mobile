import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class ExerciseListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercise List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const SizedBox(height: 16),
            WorkoutItem(
              title: 'Lunges with foot pull-up',
              duration: '30 sec',
              image: 'assets/images/constructor/workout_picture.png',
              onTap: () {
                //AutoRouter.of(context).push(const ExerciseViewRoute());
              },
            ),
            WorkoutItem(
              title: 'Stretching of the hip joint',
              duration: '25 reps',
              image: 'assets/images/constructor/workout_picture.png',
              onTap: () {
                //AutoRouter.of(context).push(const ExerciseViewRoute());
              },
            ),
            WorkoutItem(
              title: 'Lunges with foot pull-up',
              duration: '30 sec',
              image: 'assets/images/constructor/first_courses.png',
              onTap: () {
                //AutoRouter.of(context).push(const ExerciseViewRoute());
              },
            ),
            WorkoutItem(
              title: 'Stretching of the hip joint',
              duration: '25 reps',
              image: 'assets/images/constructor/first_picture.png',
              onTap: () {
               // AutoRouter.of(context).push(const ExerciseViewRoute());
              },
            ),
            WorkoutItem(
              title: 'Lunges with foot pull-up',
              duration: '30 sec',
              image: 'assets/images/constructor/fourth_picture.png',
              onTap: () {
                //AutoRouter.of(context).push(const ExerciseViewRoute());
              },
            ),
            WorkoutItem(
              title: 'Stretching of the hip joint',
              duration: '25 reps',
              image: 'assets/images/constructor/second_courses.png',
              onTap: () {
                //AutoRouter.of(context).push(const ExerciseViewRoute());
              },
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}

class WorkoutItem extends StatelessWidget {
  final String title;
  final String duration;
  final String image;
  final VoidCallback onTap;

  const WorkoutItem({
    required this.title,
    required this.duration,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Colors.grey[800],
        child: ListTile(
          leading: Image.asset(
            image,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
          title: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          subtitle: Text(
            duration,
            style: const TextStyle(
              color: Color(0xFFD0FD3E),
              fontSize: 14,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
