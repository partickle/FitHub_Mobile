import 'dart:async';
import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:fithub/features/courses/data/models/exercise_model.dart';
import 'package:fithub/features/courses/data/workout_data.dart';
import 'package:fithub/features/courses/ui/widgets/duration_widget.dart';
import 'package:fithub/res/constants/constants.dart';
import 'package:fithub/router/app_router.dart';
import 'package:fithub/ui/widgets/up_back_button.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BreakScreen extends StatefulWidget {
  final int workoutId;
  final int curExercise;

  const BreakScreen({
    super.key,
    required this.workoutId,
    required this.curExercise
  });

  @override
  State<BreakScreen> createState() => _BreakScreenState();
}

class _BreakScreenState extends State<BreakScreen> {
  double _progress = 1.0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    const totalDuration = 5;
    const interval = 1;

    _timer = Timer.periodic(const Duration(seconds: interval), (timer) {
      setState(() {
        _progress -= interval / totalDuration;
        if (_progress <= 0) {
          _progress = 0;
          _timer?.cancel();
          AutoRouter.of(context).push(ExerciseRoute(workoutId: widget.workoutId, curExercise: widget.curExercise));
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Exercise> exercises = workouts[widget.workoutId].exercises;
    Exercise exercise = exercises[widget.curExercise];
    
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
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 100, left: 24, right: 24),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Stack(
                  children: [
                    Container(
                      width: 400,
                      height: 20,
                      decoration: BoxDecoration(
                        color: kBackButtonColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      width: 400 * _progress,
                      height: 20,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}