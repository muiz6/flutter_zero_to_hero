class CountryProvider {
  final _countries = [
    Country(
      name: 'Pakistan',
      cases: 1000,
    ),
    Country(
      name: 'China',
      cases: 2000,
    ),
    Country(
      name: 'Japan',
      cases: 3000,
    ),
    Country(
      name: 'Afghanistan',
      cases: 4000,
    ),
    Country(
      name: 'Malaysia',
      cases: 5000,
    ),
  ];

  List<Country> getCountries(String searchQuery) {
    if (searchQuery.isEmpty) {
      return _countries;
    }
    return _countries.where((element) {
      final String name = element.name.toLowerCase();
      final String query = searchQuery.toLowerCase();
      return name.startsWith(query);
    }).toList();
  }
}

class Country {
  String name;
  int cases;

  Country({this.name, this.cases});
}
