import 'package:custom_widgets_and_routes/detail_page.dart';
import 'package:custom_widgets_and_routes/my_home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Widgets',
      routes: {
        '/': (context) => MyHomePage(),
        DetailPage.routeName: (context) => DetailPage(context),
      },
    );
  }
}
