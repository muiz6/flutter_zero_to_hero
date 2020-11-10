import 'package:covid_tracker_final/my_colors.dart';
import 'package:covid_tracker_final/strings.dart';
import 'package:flutter/material.dart';

import 'home/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.TITLE,
      theme: ThemeData.from(
        colorScheme: ColorScheme.light(
          primary: MyColors.PRIMARY,
          onPrimary: Colors.white,
          secondary: MyColors.SECONDARY,
          onBackground: MyColors.ON_BACKGROUND,
          onSecondary: Colors.white,
        ),
      ),
      home: HomePage(),
    );
  }
}
