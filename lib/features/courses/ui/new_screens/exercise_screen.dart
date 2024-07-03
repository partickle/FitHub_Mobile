import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:fithub/features/courses/data/models/exercise_model.dart';
import 'package:fithub/features/courses/data/workout_data.dart';
import 'package:fithub/features/courses/ui/widgets/circular_timer.dart';
import 'package:fithub/res/constants/constants.dart';
import 'package:fithub/router/app_router.dart';
import 'package:fithub/ui/widgets/center_elevated_button.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ExerciseScreen extends StatefulWidget {
  final int workoutId;
  final int curExercise;

  const ExerciseScreen({
    super.key,
    required this.workoutId,
    required this.curExercise
  });

  @override
  State<ExerciseScreen> createState() => _ExerciseScreenState();
}

class _ExerciseScreenState extends State<ExerciseScreen> {
  @override
  Widget build(BuildContext context) {
    List<Exercise> exercises = workouts[widget.workoutId].exercises;
    Exercise exercise = exercises[widget.curExercise];
    final ValueNotifier<bool> timerNotifier = ValueNotifier<bool>(false);
    
    return Scaffold(
      body: SafeArea(
        right: true,
        left:  true,
        bottom: false,
        top: false,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(exercise.gifUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  color: Colors.black.withAlpha(70),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 28, right: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    exercise.title,
                    style: courseTitleStyle.copyWith(fontSize: 36, height: 1.2)
                  ),
                  const SizedBox(height: 10),
                  Text(
                    workouts[widget.workoutId].title,
                    style: courseSubtitleStyle
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            CircularTimer(
              initialDurationSeconds: (exercise.isTime) ?  exercise.count : null,
              reps: (exercise.isTime) ? null : exercise.count,
              timerNotifier: timerNotifier,
            ),
            ValueListenableBuilder<bool>(
              valueListenable: timerNotifier,
              builder: (context, hasTimerCompleted, child) {
                if (hasTimerCompleted) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    if (widget.curExercise + 1 != exercises.length - 1) {
                      AutoRouter.of(context).popAndPush(
                        ExerciseRoute(workoutId: widget.workoutId, curExercise: widget.curExercise + 1)
                      );
                    }
                  });
                }
                return const SizedBox.shrink();
              },
            ),
            CenterElevatedButton(
              buttonText: 'Next Exercise',
              onPressed: () {
                if (widget.curExercise + 1 != exercises.length) {
                  AutoRouter.of(context).popAndPush(
                    BreakRoute(workoutId: widget.workoutId, curExercise: widget.curExercise + 1)
                  );
                } else {
                  AutoRouter.of(context).popAndPush(CongradulationRoute(workoutId: widget.workoutId));
                }
              },
              isSaveArea: false
            )
          ],
        ),
      )
    );
  }
}