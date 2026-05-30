import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class PortfolioLineChart extends StatelessWidget {
  final List<FlSpot> pointsList;
  final Color lineColor;
  const PortfolioLineChart(
      {Key? key, required this.pointsList, required this.lineColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LineChart(LineChartData(
        lineTouchData: LineTouchData(
          handleBuiltInTouches: false,
        ),
        titlesData: titlesData,
        gridData: FlGridData(
          show: false,
        ),
        borderData: FlBorderData(
          show: false,
        ),
        lineBarsData: [
          LineChartBarData(
            color: lineColor,
            barWidth: 2,
            dotData: FlDotData(
              show: false,
            ),
            //todo: Show gradient below the graph
            /*belowBarData: BarAreaData(
                    show: true,
                    color: lineColor.withAlpha(50),
                  ),*/
            //todo: Shows smooth graph if true,
            isCurved: false,
            spots: pointsList,
          )
        ]));
  }

  FlTitlesData get titlesData => FlTitlesData(
        bottomTitles: AxisTitles(drawBelowEverything: false),
        rightTitles: AxisTitles(drawBelowEverything: false),
        topTitles: AxisTitles(drawBelowEverything: false),
        leftTitles: AxisTitles(drawBelowEverything: false),
      );
}
