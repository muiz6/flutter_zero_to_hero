import 'package:covid_tracker_final/clear_app_bar.dart';
import 'package:covid_tracker_final/countries/country_list_tile.dart';
import 'package:covid_tracker_final/countries/search_bar.dart';
import 'package:covid_tracker_final/dimens.dart';
import 'package:covid_tracker_final/global_stats/plain_scroll_behavior.dart';
import 'package:covid_tracker_final/strings.dart';
import 'package:flutter/material.dart';

class CountryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(
                Dimens.RADIUS_L,
              ),
            ),
          ),
          child: Column(
            children: [
              ClearAppBar(
                title: Text(
                  Strings.COUNTRIES,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: Dimens.INSET_S,
                  bottom: Dimens.INSET_S,
                  right: Dimens.INSET_S,
                ),
                child: SearchBar(),
              ),
            ],
          ),
        ),
        Expanded(
          child: ScrollConfiguration(
            behavior: PlainScrollBehavior(),
            child: ListView.builder(
              padding: EdgeInsets.all(
                Dimens.INSET_S,
              ),
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                final int severity = index % 3;
                return CountryListTile(
                  country: index.toString(),
                  severity: Severity.values[severity],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
