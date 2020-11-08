import 'package:covid_tracker_final/dimens.dart';
import 'package:covid_tracker_final/my_colors.dart';
import 'package:covid_tracker_final/strings.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class StatChart extends StatelessWidget {
  final List<BarChartGroupData> _data = _getExampleData();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          Strings.DAILY_NEW_CASES,
          style: Theme.of(context).textTheme.headline5,
        ),
        SizedBox.fromSize(
          size: Size.fromHeight(
            Dimens.INSET_S,
          ),
        ),
        AspectRatio(
          aspectRatio: 1.5,
          // chart needs to be inside a sized container to prevent overflow
          child: BarChart(
            BarChartData(
                barGroups: _data,
                borderData: FlBorderData(
                  show: false,
                ),
                titlesData: FlTitlesData(
                  leftTitles: SideTitles(
                    showTitles: true,
                    interval: 1000,
                    reservedSize: Dimens.INSET_M,
                  ),
                )),
          ),
        ),
      ],
    );
  }

  static List<BarChartGroupData> _getExampleData() {
    final List<BarChartGroupData> data = List();
    for (int i = 1; i <= 7; i++) {
      data.add(BarChartGroupData(
        x: i,
        barRods: [
          BarChartRodData(
            y: i * 1000.0,
            colors: [
              MyColors.RED,
            ],
          ),
        ],
      ));
    }
    return data;
  }
}
