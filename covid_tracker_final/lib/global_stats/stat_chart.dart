import 'package:covid_tracker_final/strings.dart';
import 'package:flutter/material.dart';

class StatChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          Strings.DAILY_NEW_CASES,
          style: Theme.of(context).textTheme.headline5,
        ),
      ],
    );
  }
}
