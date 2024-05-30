import 'package:fithub/features/progress/components/activity_bar_chart.dart';
import 'package:flutter/material.dart';

class ActivityChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Activity (hours)', style: TextStyle(color: Colors.white)),
          const SizedBox(height: 8),
          ActivityBarChart(),
        ],
      ),
    );
  }
}
