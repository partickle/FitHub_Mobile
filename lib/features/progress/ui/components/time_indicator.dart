import 'package:fithub/features/courses/ui/widgets/circular_timer.dart';
import 'package:flutter/material.dart';

class TimeIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const SizedBox(height: 8),
          CustomPaint(
            painter: TimerPainter(
              percent: 0.75,
              strokeWidth: 5,
              isReps: false,
            ),
            child: Container(
              width: 175,
              height: 175,
              alignment: Alignment.center,
              child: const Text(
                '  Time\n45 min',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
