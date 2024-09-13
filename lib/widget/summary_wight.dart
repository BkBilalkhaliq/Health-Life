import 'package:flutter/material.dart';
import 'package:responsive_dashboard/const/const.dart';
import 'package:responsive_dashboard/widget/piechart_wiget.dart';
import 'package:responsive_dashboard/widget/schedule_wiget.dart';
import 'package:responsive_dashboard/widget/summarydeatails_wiget.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: BackgroundColor,
      ),
      child: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Chart(),
            Text(
              'Summary',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 16),
            SummaryDetails(),
            SizedBox(height: 40),
            Schedule(),
          ],
        ),
      ),
    );
  }
}
