import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:fithub/router/app_router.dart';
import 'package:flutter/material.dart';

class BreakScreen extends StatefulWidget {
  @override
  _BreakScreenState createState() => _BreakScreenState();
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
    const totalDuration = 10;
    const interval = 1;

    _timer = Timer.periodic(const Duration(seconds: interval), (timer) {
      setState(() {
        _progress -= interval / totalDuration;
        if (_progress <= 0) {
          _progress = 0;
          _timer?.cancel();
          AutoRouter.of(context).push(const SecondExerciseRoute());
        }
      });
    });
  }

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
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
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
                      '25 reps',
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
                        'assets/images/course/exercise_first.gif',
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 400,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Container(
                        width: 400 * _progress,
                        height: 20,
                        decoration: BoxDecoration(
                          color: const Color(0xFFD0FD3E),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      const Center(
                        child: Text(
                          'Break',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
