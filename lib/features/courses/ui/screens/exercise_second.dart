import 'package:auto_route/auto_route.dart';
import 'package:fithub/features/courses/ui/components/exercise_model.dart';
import 'package:fithub/features/courses/ui/widgets/circular_timer.dart';
import 'package:fithub/features/courses/ui/widgets/exercise_button.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SecondExercise extends StatefulWidget {
  const SecondExercise({Key? key}) : super(key: key);

  @override
  State<SecondExercise> createState() => _SecondExerciseState();
}

class _SecondExerciseState extends State<SecondExercise> {
  @override
  Widget build(BuildContext context) {
    Exercise exercise = Exercise.exercises[1];

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(exercise.backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 28,
            left: 10,
            right: 10,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                color: Colors.white,
                icon: const Icon(Icons.keyboard_arrow_left),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
          Positioned(
            top: 120,
            left: 30,
            right: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  exercise.title,
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  exercise.subtitle,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Color(0xFFD0FD3E),
                  ),
                ),
                const SizedBox(height: 74),
                CircularTimer(
                  initialDurationSeconds: exercise.duration,
                  reps: exercise.reps,
                ),
                const SizedBox(height: 200),
                const ExerciseButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
