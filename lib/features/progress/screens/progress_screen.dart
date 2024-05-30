import 'package:fithub/constants.dart';
import 'package:fithub/features/progress/components/activity_chart.dart';
import 'package:fithub/features/progress/components/calendar_row.dart';
import 'package:fithub/features/progress/components/summary_row.dart';
import 'package:fithub/features/progress/components/time_indicator.dart';
import 'package:flutter/material.dart';


class ProgressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: const Color(0xFF2C2C2E),
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.symmetric(vertical: 32.0),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_back_ios, color: Colors.white),
                      Center(
                        child: Text(
                          'October 2021',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.white),
                    ],
                  ),
                  const SizedBox(height: 16),
                  CalendarRow(),
                ],
              ),
            ),
            const SizedBox(height: 16),
            TimeIndicator(),
            const SizedBox(height: 16),
            ActivityChart(),
            const SizedBox(height: 16),
            SummaryRow(),
          ],
        ),
      ),
    );
  }
}
