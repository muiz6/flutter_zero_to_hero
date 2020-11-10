import 'package:covid_tracker_final/dimens.dart';
import 'package:covid_tracker_final/my_colors.dart';
import 'package:flutter/material.dart';

class CurvedTabBar extends StatelessWidget {
  final List<Widget> tabs;

  CurvedTabBar({@required this.tabs});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MyColors.CURVED_TAB_BAR_BG,
        borderRadius: BorderRadius.circular(Dimens.RADIUS_L),
      ),
      child: TabBar(
        tabs: tabs,
        labelColor: MyColors.ON_BACKGROUND,
        unselectedLabelColor: Colors.white,
        indicator: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            Dimens.RADIUS_L,
          ),
        ),
      ),
    );
  }
}
