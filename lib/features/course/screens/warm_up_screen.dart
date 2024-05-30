import 'package:auto_route/auto_route.dart';
import 'package:fithub/router/app_router.dart';
import 'package:fithub/ui/widgets/center_elevated_button.dart';
import 'package:flutter/material.dart';

class WarmUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/course/stretching.png',
                  width: double.infinity,
                  height: 250,
                  fit: BoxFit.cover,
                ),
                const Positioned(
                  left: 16,
                  top: 16,
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Simple Warm Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Learn the Basic of Training',
                    style: TextStyle(
                      color: Color(0xFFD0FD3E),
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Icon(
                        Icons.timer,
                        color: Colors.white,
                      ),
                      SizedBox(width: 8),
                      Text(
                        '60 min',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'A basic and necessary full-body stretching workout. Many people ignore such workouts, not realizing their importance, however, to avoid injury and muscle growth, they are simply necessary.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 16),
                    WorkoutItem(
                      title: 'Lunges with foot pull-up',
                      duration: '30 sec',
                      image: 'assets/images/course/lunges.png',
                      onTap: () {
                        AutoRouter.of(context).push(const ExerciseViewRoute());
                      },
                    ),
                    WorkoutItem(
                      title: 'Stretching of the hip joint',
                      duration: '25 reps',
                      image: 'assets/images/course/hip_stretch.png',
                      onTap: () {
                        AutoRouter.of(context).push(const ExerciseViewRoute());
                      },
                    ),
                    WorkoutItem(
                      title: 'Lunges with foot pull-up',
                      duration: '30 sec',
                      image: 'assets/images/course/lunges.png',
                      onTap: () {
                        AutoRouter.of(context).push(const ExerciseViewRoute());
                      },
                    ),
                    WorkoutItem(
                      title: 'Stretching of the hip joint',
                      duration: '25 reps',
                      image: 'assets/images/course/hip_stretch.png',
                      onTap: () {
                        AutoRouter.of(context).push(const ExerciseViewRoute());
                      },
                    ),
                    WorkoutItem(
                      title: 'Lunges with foot pull-up',
                      duration: '30 sec',
                      image: 'assets/images/course/lunges.png',
                      onTap: () {
                        AutoRouter.of(context).push(const ExerciseViewRoute());
                      },
                    ),
                    WorkoutItem(
                      title: 'Stretching of the hip joint',
                      duration: '25 reps',
                      image: 'assets/images/course/hip_stretch.png',
                      onTap: () {
                        AutoRouter.of(context).push(const ExerciseViewRoute());
                      },
                    ),
                    const SizedBox(height: 80),
                  ],
                ),
              ),
            ),
            CenterElevatedButton(buttonText: 'Start Workout', onPressed: () {
               AutoRouter.of(context).push(const BreakScreenRoute());
            }),
          ],
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}


class WorkoutItem extends StatelessWidget {
  final String title;
  final String duration;
  final String image;
  final VoidCallback onTap;

  WorkoutItem({
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
