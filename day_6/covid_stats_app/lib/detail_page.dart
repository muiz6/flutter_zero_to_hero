import 'country_provider.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  static const String routeName = '/detail';
  final Country _country;

  DetailPage(BuildContext context)
      : _country = ModalRoute.of(context).settings.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _country.name,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You Selected',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              _country.name,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Cases: ${_country.cases}',
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Deaths: ${_country.deaths}',
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Recovered: ${_country.recovered}',
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Active: ${_country.cases - _country.deaths - _country.recovered}',
            ),
          ],
        ),
      ),
    );
  }
}
