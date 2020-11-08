import 'package:covid_tracker_final/dimens.dart';
import 'package:covid_tracker_final/global_stats/stat_tile.dart';
import 'package:covid_tracker_final/strings.dart';
import 'package:flutter/material.dart';

class StatContent extends StatelessWidget {
  final List<int> _colors = [
    0xFFf5ae58,
    0xFFff3d3d,
    0xFF92f25c,
    0xFF5db6f5,
    0xFFa25ffa,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: StatTile(
                  title: Strings.AFFECTED,
                  color: Color(_colors[0]),
                ),
              ),
              // Using sized box for easier padding
              SizedBox.fromSize(
                size: Size.fromWidth(
                  Dimens.INSET_S,
                ),
              ),
              Expanded(
                child: StatTile(
                  title: Strings.DEATHS,
                  color: Color(_colors[1]),
                ),
              ),
            ],
          ),
        ),
        SizedBox.fromSize(
          size: Size.fromHeight(
            Dimens.INSET_S,
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: StatTile(
                  title: Strings.RECOVERED,
                  color: Color(_colors[2]),
                ),
              ),
              SizedBox.fromSize(
                size: Size.fromWidth(
                  Dimens.INSET_S,
                ),
              ),
              Expanded(
                child: StatTile(
                  title: Strings.ACTIVE,
                  color: Color(_colors[3]),
                ),
              ),
              SizedBox.fromSize(
                size: Size.fromWidth(
                  Dimens.INSET_S,
                ),
              ),
              Expanded(
                child: StatTile(
                  title: Strings.SERIOUS,
                  color: Color(_colors[4]),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
