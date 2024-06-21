import 'package:fithub/features/progress/ui/components/day_indicator.dart';
import 'package:flutter/material.dart';

class CalendarRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ...List.generate(7, (index) {
          return DayIndicator(
            day: ['M', 'T', 'W', 'T', 'F', 'S', 'S'][index],
            date: (index + 16).toString(),
            isSelected: index == 2,
          );
        }),
      ],
    );
  }
}
