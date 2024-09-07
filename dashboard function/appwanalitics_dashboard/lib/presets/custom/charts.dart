import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

dBarChart({required List eachBarY, required eachBarX}) {
  return SizedBox(
      height: 200,
      child: BarChart(
        BarChartData(
            barGroups: List.generate(eachBarX.length, (index) {
              while (eachBarY.length < eachBarX.length) {
                eachBarY.add(0);
              }
              return BarChartGroupData(
                x: int.parse(eachBarX[index]),
                barRods: [
                  BarChartRodData(
                      toY: eachBarY.reversed.toList()[index] + .0,
                      color: const Color.fromARGB(225, 225, 22, 22),
                      width: 10)
                ],
              );
            }),
            gridData: const FlGridData(drawVerticalLine: false),
            borderData: FlBorderData(
                border: const Border(
                    left: BorderSide.none,
                    bottom: BorderSide(color: Colors.grey))),
            titlesData: const FlTitlesData(
                rightTitles:
                    AxisTitles(sideTitles: SideTitles(showTitles: false)),
                topTitles:
                    AxisTitles(sideTitles: SideTitles(showTitles: false)))),
      ));
}
