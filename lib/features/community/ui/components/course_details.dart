import 'package:flutter/material.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16),
        Text(
          'Wake Up Call',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16),
        Text(
          'Workouts for Beginner',
          style: TextStyle(
            color: Color(0xFFD0FD3E),
            fontSize: 16,
          ),
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Icon(Icons.play_circle, color: Colors.white),
            SizedBox(width: 8),
            Text(
              '3 days',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        Text(
          'A morning course that will help maintain the tone of your body.',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
