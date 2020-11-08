import 'package:covid_tracker_final/dimens.dart';
import 'package:covid_tracker_final/global_stats/stat_tile.dart';
import 'package:covid_tracker_final/my_colors.dart';
import 'package:covid_tracker_final/strings.dart';
import 'package:flutter/material.dart';

class StatContent extends StatelessWidget {
  final List<Color> _colors = [
    MyColors.YELLOW,
    MyColors.RED,
    MyColors.GREEN,
    Color(0xFF5db6f5),
    Color(0xFFa25ffa),
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
                  color: _colors[0],
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
                  color: _colors[1],
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
                  color: _colors[2],
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
                  color: _colors[3],
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
                  color: _colors[4],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
