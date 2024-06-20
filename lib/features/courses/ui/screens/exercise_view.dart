import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ExerciseView extends StatefulWidget {
  const ExerciseView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ExerciseViewState createState() => _ExerciseViewState();
}

class _ExerciseViewState extends State<ExerciseView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/course/background_stretch.png',
            fit: BoxFit.cover,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                const Text(
                  'Stretching of the hip joint',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Simple Warm Up',
                  style: TextStyle(
                    color: Color(0xFFD0FD3E),
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 16),
                const Row(
                  children: [
                    Icon(
                      Icons.play_circle,
                      color: Colors.white,
                    ),
                    SizedBox(width: 8),
                    Text(
                      '30 secs',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Text(
                  'The exercise is complex for the lower body and balance, including performing lunges while simultaneously lifting the foot up to the buttocks at the maximum point of the lunge. This exercise develops strength, flexibility and stability of the legs, improving the functionality and aesthetics of movements.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 16),
                Center(
                  child: GestureDetector(
                    child: Container(
                      height: 200,
                      width: double.infinity,
                      child: Image.asset(
                        'assets/images/course/exercise_view.gif',
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                const SizedBox(height: 150),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
