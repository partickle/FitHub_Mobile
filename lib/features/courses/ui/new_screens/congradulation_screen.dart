import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:fithub/features/courses/data/models/workout_model.dart';
import 'package:fithub/features/courses/data/workout_data.dart';
import 'package:fithub/features/courses/providers/course_provider.dart';
import 'package:fithub/res/constants/constants.dart';
import 'package:fithub/ui/widgets/center_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

@RoutePage()
class CongradulationScreen extends StatefulWidget {
  final int workoutId;

  const CongradulationScreen({
    super.key,
    required this.workoutId
  });

  @override
  State<CongradulationScreen> createState() => _CongradulationScreenState();
}

class _CongradulationScreenState extends State<CongradulationScreen> {
  @override
  Widget build(BuildContext context) {
    final courseProvider = Provider.of<CourseProvider>(context);
    double duration = courseProvider.getDurationWorkout(widget.workoutId);
    Workout workout = workouts[widget.workoutId];

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
                  image: AssetImage(workout.imageUrl),
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
                    "Congradulations",
                    style: courseTitleStyle.copyWith(fontSize: 36, height: 1.2)
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 400),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'You have completed all the exercises!',
                      style: courseTitleStyle,
                    ),
                    Text(
                      'Execution time: $duration min'
                    ),
                  ],
                )
              ),
            ),
            CenterElevatedButton(
              buttonText: 'End Workout', 
              onPressed: () {
                AutoRouter.of(context).popUntilRoot();
              }, 
              isSaveArea: false
            )
          ],
        ),
      )
    );
  }
}