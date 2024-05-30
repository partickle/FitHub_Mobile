import 'package:auto_route/auto_route.dart';
import 'package:fithub/ui/widgets/center_elevated_button.dart';
import 'package:flutter/material.dart';

class CourseEditScreen extends StatelessWidget {
  final String description;

  const CourseEditScreen({this.description = ''});

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
                  'assets/images/constructor/first_courses.png',
                  width: double.infinity,
                  height: 250,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  left: 16,
                  top: 16,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      AutoRouter.of(context).pop();
                    },
                  ),
                ),
                Positioned(
                  right: 16,
                  top: 16,
                  child: IconButton(
                    icon: const Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      // Add your settings navigation or functionality here
                    },
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Learn the Basic of Training',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
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
                      Icon(
                        Icons.timer,
                        color: Colors.white,
                      ),
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
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReviewTextField(controller: TextEditingController(text: description)),
                    const SizedBox(height: 16),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          // Add your onPressed functionality here
                        },
                        child: const Icon(Icons.add, color: Colors.white, size: 30),
                      ),
                    ),
                    const SizedBox(height: 16),
                    WorkoutItem(
                      title: 'Simple Warm-Up',
                      duration: '60 min',
                      image: 'assets/images/constructor/workout_picture.png',
                      onTap: () {
                        // Add your onTap functionality here
                      },
                    ),
                    const SizedBox(height: 80),
                  ],
                ),
              ),
            ),
            CenterElevatedButton(
              buttonText: 'Begin course',
              onPressed: () {
                // Add your onPressed functionality here
              },
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class ReviewTextField extends StatelessWidget {
  final TextEditingController controller;

  const ReviewTextField({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: 6,
      decoration: InputDecoration(
        hintText: 'Description...',
        hintStyle: const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        fillColor: Colors.black12,
      ),
      style: const TextStyle(color: Colors.white),
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
