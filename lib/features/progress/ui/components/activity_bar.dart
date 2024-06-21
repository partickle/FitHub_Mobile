import 'package:flutter/material.dart';

class ActivityBar extends StatelessWidget {
  final String label;
  final double value;

  const ActivityBar({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value.toStringAsFixed(0),
          style: const TextStyle(color: Colors.white),
        ),
        const SizedBox(height: 4),
        Container(
          width: 12,
          height: value * 10,
          color: Colors.white,
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
