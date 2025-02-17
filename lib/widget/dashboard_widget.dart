import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Util/responsive.dart';
import 'package:responsive_dashboard/widget/activitydetailscard.dart';
import 'package:responsive_dashboard/widget/barchartcard.dart';
import 'package:responsive_dashboard/widget/header_widget.dart';
import 'package:responsive_dashboard/widget/linechartcard_widget.dart';
import 'package:responsive_dashboard/widget/summary_wight.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            const SizedBox(height: 18),
            const HeaderWidget(),
            const SizedBox(height: 18),
            const ActivityDetailsCard(),
            const SizedBox(height: 18),
            const LineChartCard(),
            const SizedBox(height: 18),
            const BarGraphCard(),
            const SizedBox(height: 18),
            if (Responsive.isTablet(context)) const SummaryWidget(),
          ],
        ),
      ),
    );
  }
}
