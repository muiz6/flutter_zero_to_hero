import 'package:flutter/material.dart';
import 'country_provider.dart';

class CountryListTile extends StatelessWidget {
  final Country country;

  CountryListTile({
    this.country,
  });

  @override
  Widget build(Object context) {
    double _padding = 8;
    double _radius = 10;
    Color _color = Colors.black;

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
              width: 22,
              child: Text(
                "${country.index}",
                textAlign: TextAlign.center,
                style: TextStyle(color: _color),
              ),
            ),
            Container(width: 1, color: _color),
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
                      country.name,
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(color: _color),
                    ),
                    Text(
                      country.cases.toString() + ' Cases',
                      style: TextStyle(color: _color),
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
