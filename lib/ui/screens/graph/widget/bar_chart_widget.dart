import 'package:feature_first_template/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class BarChartWidget extends StatefulWidget {
  const BarChartWidget({super.key});

  @override
  State<BarChartWidget> createState() => _BarChartWidgetState();
}

class _BarChartWidgetState extends State<BarChartWidget> {
  int touchedIndex = 0;

  final List<Map<String, int>> graphItemsData = [
    {"x": 0, "y": 3},
    {"x": 1, "y": 5},
    {"x": 2, "y": 6},
    {"x": 3, "y": 7},
    {"x": 4, "y": 9},
    {"x": 5, "y": 1},
    {"x": 6, "y": 3},
  ];
  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        barTouchData: BarTouchData(
          mouseCursorResolver:
              (FlTouchEvent event, BarTouchResponse? response) {
                return response == null || response.spot == null
                    ? MouseCursor.defer
                    : SystemMouseCursors.basic;
              },
          touchCallback:
              (FlTouchEvent event, BarTouchResponse? barTouchResponse) {
                setState(() {
                  if (!event.isInterestedForInteractions ||
                      barTouchResponse == null ||
                      barTouchResponse.spot == null) {
                    touchedIndex = -1;
                    return;
                  }
                  touchedIndex = barTouchResponse.spot!.touchedBarGroupIndex;
                });
              },
          touchTooltipData: BarTouchTooltipData(
            getTooltipColor: (group) {
              return AppColors.appWhiteColor;
            },
            tooltipBorderRadius: BorderRadius.circular(8),
            tooltipMargin: -5,
            tooltipPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            getTooltipItem: (group, groupIndex, rod, rodIndex) {
              return BarTooltipItem(
                "${rod.toY.toInt().toString()} Task",
                Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: AppColors.appBackgroundColor,
                  fontWeight: FontWeight.w500,
                ),
              );
            },
          ),
        ),
        maxY: 10,
        minY: 0,
        titlesData: FlTitlesData(
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),

          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              reservedSize: 30,
              showTitles: true,
              getTitlesWidget: (value, meta) {
                String xData = meta.formattedValue;
                switch (meta.formattedValue) {
                  case "0":
                    xData = "Fri";
                    break;
                  case "1":
                    xData = "Sat";
                    break;
                  case "2":
                    xData = "Sun";
                    break;
                  case "3":
                    xData = "Mon";
                    break;
                  case "4":
                    xData = "Tue";
                    break;
                  case "5":
                    xData = "Wed";
                    break;
                  case "6":
                    xData = "Thr";
                    break;
                  default:
                }
                return SideTitleWidget(meta: meta, child: Text(xData));
              },
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              interval: 2,
              showTitles: true,
              reservedSize: 30,
              getTitlesWidget: (value, meta) {
                return int.parse(meta.formattedValue) == 10
                    ? Text(meta.formattedValue)
                    : Text("0${meta.formattedValue}");
              },
            ),
          ),
        ),
        gridData: FlGridData(
          horizontalInterval: 2,
          drawVerticalLine: false,
          getDrawingHorizontalLine: (value) {
            return FlLine(strokeWidth: 1, color: AppColors.appInputBorder);
          },
        ),
        borderData: FlBorderData(
          show: true,
          border: Border(
            top: BorderSide(width: 1, color: AppColors.appInputBorder),
            bottom: BorderSide(width: 1, color: AppColors.appInputBorder),
          ),
        ),
        alignment: BarChartAlignment.spaceEvenly,

        barGroups: [
          ...graphItemsData.map((e) {
            return BarChartGroupData(
              x: e["x"]!,
              barRods: [
                BarChartRodData(
                  toY: e["y"]!.toDouble(),
                  width: 28,
                  color: graphItemsData.indexOf(e) == touchedIndex
                      ? AppColors.violet
                      : AppColors.appWhiteColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(6),
                    topRight: Radius.circular(6),
                  ),
                ),
              ],
            );
          }),
        ],
      ),
    );
  }
}
