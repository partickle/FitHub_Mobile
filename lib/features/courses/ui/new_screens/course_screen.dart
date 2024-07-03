import 'package:auto_route/auto_route.dart';
import 'package:fithub/features/courses/data/course_data.dart';
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
class CourseScreen extends StatelessWidget {
  final int courseId;

  const CourseScreen({
    super.key,
    required this.courseId
  });

  @override
  Widget build(BuildContext context) {
    final courseProvider = Provider.of<CourseProvider>(context);
    double duration = courseProvider.getDurationCourse(courseId);

    return Scaffold(
      body: SafeArea(
        top: false,
        left: true,
        right: true,
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              courses[courseId].imageUrl,
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
                              courses[courseId].title,
                              style: courseTitleStyle.copyWith(fontSize: 22)
                            ),
                            const SizedBox(height: 5),
                            Text(
                              courses[courseId].subtitle,
                              style: courseSubtitleStyle
                            ),
                            const SizedBox(height: 20),
                            DurationWidget(
                              durationText: '${duration % 1 == 0 ? duration.toStringAsFixed(0) : duration.toString()} h',
                              isTransparent: false,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              courses[courseId].description,
                              style: courseSubtitleStyle.copyWith(fontSize: 15, color: Colors.white)
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                        Column(
                          children: courseProvider.getWorkoutsByCourse(courseId).map((workout) {
                            double durWorkout = courseProvider.getDurationWorkout(workout.id);
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: WorkoutCard(
                                title: workout.title,
                                imageUrl: workout.imageUrl,
                                duration: '${durWorkout % 1 == 0 ? durWorkout.toStringAsFixed(0) : durWorkout.toString()} min',
                                onTap: () {
                                  AutoRouter.of(context).push(WorkoutRoute(courseId: courseId, workoutId: workout.id));
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
              buttonText: 'Begin Course',
              isSaveArea: false,
              onPressed: () {}
            ),
          ],
        ),
      ),
    );
  }
}