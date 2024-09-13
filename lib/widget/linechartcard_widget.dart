import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/const/const.dart';
import 'package:responsive_dashboard/data/Linesdata.dart';
import 'package:responsive_dashboard/widget/Customcard_wiget.dart';

class LineChartCard extends StatefulWidget {
  const LineChartCard({super.key});

  @override
  State<LineChartCard> createState() => _LineChartCardState();
}

class _LineChartCardState extends State<LineChartCard> {
  final data = LineData();

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Steps Overview",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 20,
          ),
          AspectRatio(
            aspectRatio: 16 / 6,
            child: LineChart(LineChartData(
              lineTouchData: const LineTouchData(handleBuiltInTouches: true),
              gridData: const FlGridData(show: false),
              titlesData: FlTitlesData(
                  rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false)),
                  topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false)),
                  leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                          getTitlesWidget: (double value, TitleMeta meta) {
                            return data.leftTitle[value.toInt()] != null
                                ? SideTitleWidget(
                                    axisSide: meta.axisSide,
                                    child: Text(
                                      data.leftTitle[value.toInt()].toString(),
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[400]),
                                    ))
                                : const SizedBox();
                          },
                          showTitles: true,
                          interval: 1,
                          reservedSize: 40)),
                  bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: (double value, TitleMeta meta) {
                      return data.bottomTitle[value.toInt()] != null
                          ? Text(
                              data.bottomTitle[value.toInt()].toString(),
                              style: TextStyle(
                                  fontSize: 12, color: Colors.grey[400]),
                            )
                          : const SizedBox();
                    },
                  ))),
              borderData: FlBorderData(show: false),
              lineBarsData: [
                LineChartBarData(
                  color: SelectionColor,
                  barWidth: 2.5,
                  belowBarData: BarAreaData(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        SelectionColor.withOpacity(0.5),
                        Colors.transparent
                      ])),
                  show: true,
                  dotData: const FlDotData(show: false),
                  spots: data.spots,
                ),
              ],
              minX: 0,
              maxX: 120,
              maxY: 105,
              minY: -5,
            )),
          )
        ],
      ),
    );
  }
}
