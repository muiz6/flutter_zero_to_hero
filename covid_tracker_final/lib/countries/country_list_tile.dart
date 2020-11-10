import 'package:covid_tracker_final/dimens.dart';
import 'package:covid_tracker_final/my_colors.dart';
import 'package:covid_tracker_final/strings.dart';
import 'package:flutter/material.dart';

class CountryListTile extends StatelessWidget {
  final List<Color> _colors = [
    MyColors.PRIMARY,
    MyColors.YELLOW,
    MyColors.RED,
  ];
  final String country;
  final Severity severity;
  final int cases;

  CountryListTile({
    this.country = '',
    this.severity = Severity.low,
    this.cases = 0,
  });

  @override
  Widget build(Object context) {
    return Padding(
      padding: EdgeInsets.all(
        Dimens.INSET_S,
      ),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: MyColors.ON_BACKGROUND_VARIANT,
          ),
          borderRadius: BorderRadius.circular(
            Dimens.RADIUS_S,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(
            Dimens.RADIUS_S,
          ),
          child: Row(
            children: [
              Container(
                width: 10,
                color: _colors[severity.index],
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(
                    Dimens.INSET_S,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        country,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Text(
                        cases.toString() + ' ' + Strings.CASES,
                      ),
                    ],
                  ),
                ),
              ),
              Icon(
                Icons.keyboard_arrow_right,
                size: 40,
                color: MyColors.ON_BACKGROUND_VARIANT,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum Severity {
  low,
  medium,
  extreme,
}
