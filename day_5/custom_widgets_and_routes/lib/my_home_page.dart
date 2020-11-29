import 'package:custom_widgets_and_routes/country_list_tile.dart';
import 'package:custom_widgets_and_routes/country_provider.dart';
import 'package:custom_widgets_and_routes/detail_page.dart';
import 'package:custom_widgets_and_routes/search_widget.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final provider = CountryProvider();
  List<Country> _countries;

  _MyHomePageState() {
    // initial state
    _countries = provider.getCountries('');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchWidget(
          onChanged: (input) {
            setState(() {
              _countries = provider.getCountries(input);
            });
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(5),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(5),
              child: GestureDetector(
                child: CountryListTile(
                  country: _countries[index].name,
                  cases: _countries[index].cases,
                  severity: Severity.values[index % 3],
                ),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    DetailPage.routeName,
                    arguments: _countries[index],
                  );
                },
              ),
            );
          },
          itemCount: _countries.length,
        ),
      ),
    );
  }
}
