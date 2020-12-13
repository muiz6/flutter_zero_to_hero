import 'package:covid_tracker_app/country_provider.dart';
import 'package:flutter/material.dart';
import 'country_tile.dart';
import 'country_provider.dart';

class CountryPage extends StatefulWidget {
  @override
  _CountryPageState createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  String countryName = "Pakistan";
  int cases = 10000;
  final provider = CountryProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Countries"),
        backgroundColor: Colors.grey,
      ),
      body: FutureBuilder(
        future: provider.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              itemBuilder: (context, index) {
                return CountryTile(
                  index: index + 1,
                  countryName: snapshot.data[index].countryName,
                  cases: snapshot.data[index].cases,
                );
              },
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
