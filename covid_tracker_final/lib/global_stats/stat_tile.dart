import 'package:covid_tracker_final/dimens.dart';
import 'package:flutter/material.dart';

class StatTile extends StatelessWidget {
  final Color color;

  StatTile({this.color = const Color(0x44FFFFFF)});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimens.RADIUS_S),
        color: color,
      ),
    );
  }
}
