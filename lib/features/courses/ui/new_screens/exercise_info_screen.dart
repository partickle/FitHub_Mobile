import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:fithub/features/courses/data/exercise_data.dart';
import 'package:fithub/features/courses/data/models/exercise_model.dart';
import 'package:fithub/features/courses/data/workout_data.dart';
import 'package:fithub/features/courses/ui/widgets/duration_widget.dart';
import 'package:fithub/res/constants/constants.dart';
import 'package:fithub/ui/widgets/up_back_button.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ExerciseInfoScreen extends StatefulWidget {
  final int workoutId;
  final int exerciseId;

  const ExerciseInfoScreen({
    super.key,
    required this.workoutId,
    required this.exerciseId
  });

  @override
  State<ExerciseInfoScreen> createState() => _ExerciseInfoScreenState();
}

class _ExerciseInfoScreenState extends State<ExerciseInfoScreen> {
  @override
  Widget build(BuildContext context) {
    Exercise exercise = exercises[widget.exerciseId];
    
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
              padding: const EdgeInsets.only(top: 140, left: 28, right: 28),
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
                  DurationWidget(
                    durationText: '${exercise.count} ${(exercise.isTime) ? 'sec' : 'reps'}',
                    isTransparent: true,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    exercise.description,
                    style: courseSubtitleStyle.copyWith(fontSize: 15, color: Colors.white)
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 400,
                    height: 170,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(exercise.gifUrl),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(30)
                    ),
                  ),
                ],
              ),
            ),
            const UpBackButton(
              isLeft: true,
              isTransparent: true
            )
          ],
        ),
      )
    );
  }
}