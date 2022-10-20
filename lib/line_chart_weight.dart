import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartSampleWeight extends StatefulWidget {
  const LineChartSampleWeight({super.key});

  @override
  State<LineChartSampleWeight> createState() => _LineChartSampleWeight();
}

class _LineChartSampleWeight extends State<LineChartSampleWeight> {
  List<Color> gradientColors = [
    const Color(0xffd53030),
    const Color(0xffd30202),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1.70,
          child: Container(
            padding: const EdgeInsets.only(right: 10, left: 20),
            child: LineChart(
              mainData(),
            ),
          ),
        ),
      ],
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff67727d),
      fontWeight: FontWeight.w600,
      fontSize: 15,
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = '60';
        break;
      case 2:
        text = '70';
        break;
      case 4:
        text = '80';
        break;
      case 6:
        text = '90';
        break;
      case 8:
        text = '100';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: false,
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
          ),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      minX: 0,
      maxX: 10,
      minY: 0,
      maxY: 8,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 8),
            FlSpot(1.6, 7),
            FlSpot(2.9, 8),
            FlSpot(4.8, 6.1),
            FlSpot(6, 6),
            FlSpot(7.5, 4),
            FlSpot(9, 4),
            FlSpot(9, 4),
          ],
          isCurved: false,
          gradient: LinearGradient(
            colors: [
              ColorTween(begin: gradientColors[0], end: gradientColors[1])
                  .lerp(0.2)!,
              ColorTween(begin: gradientColors[0], end: gradientColors[1])
                  .lerp(0.2)!,
            ],
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: true,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: [
                ColorTween(begin: gradientColors[0], end: gradientColors[1])
                    .lerp(0.2)!
                    .withOpacity(0.4),
                ColorTween(begin: gradientColors[0], end: gradientColors[1])
                    .lerp(0.2)!
                    .withOpacity(0.1),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
