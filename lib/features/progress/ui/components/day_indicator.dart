import 'package:flutter/material.dart';

class DayIndicator extends StatelessWidget {
  final String day;
  final String date;
  final bool isSelected;

  const DayIndicator({
    required this.day,
    required this.date,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          day,
          style: const TextStyle(color: Colors.white),
        ),
        const SizedBox(height: 4),
        CircleAvatar(
          radius: 16,
          backgroundColor: isSelected ? Colors.lightGreenAccent : Colors.grey,
          child: Text(
            date,
            style: TextStyle(color: isSelected ? Colors.black : Colors.white),
          ),
        ),
      ],
    );
  }
}
