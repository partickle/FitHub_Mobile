import 'package:fithub/features/progress/ui/components/activity_bar.dart';
import 'package:flutter/material.dart';

class ActivityBarChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ...List.generate(11, (index) {
          return ActivityBar(
            label: ['TX', 'VA', 'NY', 'MD', 'OK', 'NM', 'NC', 'NV', 'KY', 'NE', 'FL'][index],
            value: [6, 3, 2, 9, 4, 9, 3, 7, 8, 10, 7][index].toDouble(),
          );
        }),
      ],
    );
  }
}
