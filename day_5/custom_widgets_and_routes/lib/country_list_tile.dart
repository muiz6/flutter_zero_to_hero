import 'package:flutter/material.dart';

class CountryListTile extends StatelessWidget {
  final List<Color> _colors = [
    Colors.green,
    Colors.orange,
    Colors.red,
  ];
  final String country;
  final Severity severity;
  final int cases;

  CountryListTile({
    this.country = 'Country',
    this.severity = Severity.low,
    this.cases = 0,
  });

  @override
  Widget build(Object context) {
    double _padding = 8;
    double _radius = 10;
    Color _color = Colors.grey;

    return Container(
      height: 80,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: _color,
        ),
        borderRadius: BorderRadius.circular(
          _radius,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          _radius,
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
                  _padding,
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
                      cases.toString() + ' Cases',
                    ),
                  ],
                ),
              ),
            ),
            Icon(
              Icons.keyboard_arrow_right,
              size: 40,
              color: _color,
            ),
          ],
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
