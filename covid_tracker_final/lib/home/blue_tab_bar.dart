import 'package:covid_tracker_final/dimens.dart';
import 'package:covid_tracker_final/my_colors.dart';
import 'package:flutter/material.dart';

class BlueTabBar extends StatelessWidget {
  final List<Widget> tabs;

  BlueTabBar({@required this.tabs});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Dimens.INSET_S),
      child: TabBar(
        indicator: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.circular(Dimens.RADIUS_L),
        ),
        unselectedLabelColor: MyColors.ON_BACKGROUND_VARIANT,
        tabs: tabs,
      ),
    );
  }
}
