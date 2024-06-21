import 'package:flutter/material.dart';

class SummaryItem extends StatelessWidget {
  final String label;
  final String value;

  const SummaryItem({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(color: Color(0xFFFFFFFF), fontSize: 24),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(color: Color(0xFFD0FD3E)),
        ),
      ],
    );
  }
}
