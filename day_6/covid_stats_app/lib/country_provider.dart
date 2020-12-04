import 'package:covid_stats_app/countries.dart';
import 'package:http/http.dart';
import 'dart:convert';

class CountryProvider {
  List<Country> countries;

  List<Country> fetchCountries(dynamic parsed) {
    // print(parsed.length);
    List<Country> countries = List();
    for (int i = 0; i < parsed.length; i++) {
      countries.add(
        Country(
          name: countryNames[parsed[i]['country']] != null
              ? countryNames[parsed[i]['country']]
              : parsed[i]['country'],
          cases: parsed[i]["cases"],
          deaths: parsed[i]['deaths'],
          recovered: parsed[i]['recovered'],
          index: i + 1,
        ),
      );
    }
    // print(countries[0].name);
    this.countries = countries;
    return countries;
  }

  Future<List<Country>> fetchApi() async {
    final client = Client();
    var response = await client.get("https://covid19-api.org/api/status");
    if (response.statusCode == 200) {
      return fetchCountries(json.decode(response.body));
    } else {
      print("Error!!! $response");
      return [];
    }
  }
}

class Country {
  String name;
  int cases;
  int deaths;
  int recovered;
  int index;

  Country({this.name, this.cases, this.deaths, this.recovered, this.index});
}
