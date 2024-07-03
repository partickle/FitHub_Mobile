import 'package:auto_route/auto_route.dart';
import 'package:fithub/features/courses/data/course_data.dart';
import 'package:fithub/features/courses/data/workout_data.dart';
import 'package:fithub/features/courses/providers/course_provider.dart';
import 'package:fithub/features/courses/ui/widgets/duration_widget.dart';
import 'package:fithub/features/courses/ui/widgets/workout_card.dart';
import 'package:fithub/res/constants/constants.dart';
import 'package:fithub/router/app_router.dart';
import 'package:fithub/ui/widgets/center_elevated_button.dart';
import 'package:fithub/ui/widgets/up_back_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@RoutePage()
class WorkoutScreen extends StatelessWidget {
  final int courseId;
  final int workoutId;

  const WorkoutScreen({
    super.key,
    required this.courseId,
    required this.workoutId
  });

  @override
  Widget build(BuildContext context) {
    final courseProvider = Provider.of<CourseProvider>(context);
    double duration = courseProvider.getDurationWorkout(workoutId);

    return Scaffold(
      body: SafeArea(
        top: false,
        left: true,
        right: true,
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              workouts[workoutId].imageUrl,
              height: 320.0,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                const IgnorePointer(child: SizedBox(height: 250)),
                Container(
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              workouts[workoutId].title,
                              style: courseTitleStyle.copyWith(fontSize: 22)
                            ),
                            const SizedBox(height: 5),
                            Text(
                              courses[courseId].title,
                              style: courseSubtitleStyle
                            ),
                            const SizedBox(height: 20),
                            DurationWidget(
                              durationText: '${duration % 1 == 0 ? duration.toStringAsFixed(0) : duration.toString()} min',
                              isTransparent: false,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              workouts[workoutId].description,
                              style: courseSubtitleStyle.copyWith(fontSize: 15, color: Colors.white)
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                        Column(
                          children: courseProvider.getExercisesByWorkout(workoutId).map((exersice) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: WorkoutCard(
                                title: exersice.title,
                                imageUrl: exersice.imageUrl,
                                duration: '${exersice.count} ${(exersice.isTime) ? 'sec' : 'reps'}',
                                onTap: () {
                                  AutoRouter.of(context).push(ExerciseInfoRoute(workoutId: workoutId, exerciseId: exersice.id));
                                }
                              ),
                            );
                          }).toList(), 
                        ),
                        const SizedBox(height: 70)
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: IgnorePointer(
                child: Container(
                  height: 375,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Color(0xFF111112),
                      ],
                      stops: [0.5, 1.0],
                    ),
                  ),
                ),
              )
            ),
            const UpBackButton(
              isLeft: true,
              isTransparent: true
            ),
            CenterElevatedButton(
              buttonText: 'Start Workout',
              isSaveArea: false,
              onPressed: () {
                AutoRouter.of(context).push(ExerciseRoute(workoutId: workoutId, curExercise: 0));
              }
            ),
          ],
        ),
      ),
    );
  }
}