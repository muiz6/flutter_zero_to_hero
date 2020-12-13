import 'dart:convert';

import 'country_data.dart';
import 'package:http/http.dart' as http;

class CountryProvider {
  List<CountryData> countries;

  List<CountryData> getCountries(dynamic parsedJson) {
    print(parsedJson.length);
    List<CountryData> countryList = [];
    for (int i = 0; i < parsedJson.length; i++) {
      CountryData temp = CountryData(
        countryName: parsedJson[i]["country"],
        cases: parsedJson[i]["cases"],
        deaths: parsedJson[i]["deaths"],
        recovered: parsedJson[i]["recovered"],
      );
      countryList.add(temp);
    }
    return countryList;
  }

  Future<List<CountryData>> getData() async {
    String url = "https://covid19-api.org/api/status";
    var response = await http.get(url);
    if (response.statusCode == 200) {
      // print(response.contentLength);
      return getCountries(json.decode(response.body));
    } else {
      print("Error!!! ${response.statusCode}");
      return [];
    }
  }
}
