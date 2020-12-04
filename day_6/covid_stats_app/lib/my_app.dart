import 'package:flutter/material.dart';
import 'my_home_page.dart';
import 'detail_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom Widgets',
      routes: {
        '/': (context) => MyHomePage(),
        DetailPage.routeName: (context) => DetailPage(context),
      },
    );
  }
}
