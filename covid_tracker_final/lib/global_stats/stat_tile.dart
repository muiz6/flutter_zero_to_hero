import 'package:covid_tracker_final/dimens.dart';
import 'package:flutter/material.dart';

class StatTile extends StatelessWidget {
  final Color color;
  final String title;
  final int value;

  StatTile({
    this.color = const Color(0x44FFFFFF),
    this.title = '',
    this.value = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(Dimens.INSET_S),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Colors.white,
                  ),
            ),
            Text(
              value.toString(),
              style: Theme.of(context).textTheme.headline5.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimens.RADIUS_S),
        color: color,
      ),
    );
  }
}
