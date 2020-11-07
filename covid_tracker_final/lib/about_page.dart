import 'package:covid_tracker_final/clear_app_bar.dart';
import 'package:covid_tracker_final/my_colors.dart';
import 'package:covid_tracker_final/strings.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          ClearAppBar(
            centerTitle: true,
            title: Text(
              Strings.ABOUT,
              style: TextStyle(
                color: MyColors.ON_BACKGROUND,
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Container(
                width: 100,
                height: 100,
                color: Colors.grey,
                child: Center(
                  child: Text(
                    "Insert Event Logo Here",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          Text(
            Messages.ORGANIZERS,
          ),
        ],
      ),
    );
  }
}
