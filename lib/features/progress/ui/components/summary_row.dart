import 'package:fithub/features/progress/ui/components/summary_item.dart';
import 'package:flutter/material.dart';

class SummaryRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SummaryItem(label: 'Days', value: '108'),
          Container(
            height: 50,
            width: 1,
            color: Colors.white,
          ),
          const SummaryItem(label: 'Completed', value: '46'),
          Container(
            height: 50,
            width: 1,
            color: Colors.white,
          ),
          const SummaryItem(label: 'Active', value: '5'),
        ],
      ),
    );
  }
}
