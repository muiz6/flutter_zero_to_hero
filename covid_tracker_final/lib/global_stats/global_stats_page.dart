import 'package:covid_tracker_final/clear_app_bar.dart';
import 'package:covid_tracker_final/dimens.dart';
import 'package:covid_tracker_final/global_stats/plain_scroll_behavior.dart';
import 'package:covid_tracker_final/global_stats/curved_tab_bar.dart';
import 'package:covid_tracker_final/global_stats/stat_content.dart';
import 'package:covid_tracker_final/strings.dart';
import 'package:flutter/material.dart';

class GlobalStatsPage extends StatefulWidget {
  @override
  _StatsPageState createState() => _StatsPageState();
}

class _StatsPageState extends State<GlobalStatsPage> {
  final List<Widget> _tabs = [
    Tab(
      text: Strings.TOTAL,
    ),
    Tab(
      text: Strings.TODAY,
    ),
    Tab(
      text: Strings.YESTERDAY,
    ),
  ];
  final EdgeInsets _paddingTbv = EdgeInsets.all(Dimens.INSET_M);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: SafeArea(
        child: Column(
          children: [
            ClearAppBar(
              title: Text(
                Strings.GLOBAL_STATISTICS,
              ),
            ),
            DefaultTabController(
              length: _tabs.length,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: Dimens.INSET_M),
                    child: CurvedTabBar(
                      tabs: _tabs,
                    ),
                  ),
                  Container(
                    height: 200,
                    child: ScrollConfiguration(
                      behavior: PlainScrollBehavior(),
                      child: TabBarView(
                        children: [
                          Padding(
                            padding: _paddingTbv,
                            child: StatContent(),
                          ),
                          Padding(
                            padding: _paddingTbv,
                            child: StatContent(),
                          ),
                          Padding(
                            padding: _paddingTbv,
                            child: StatContent(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(Dimens.RADIUS_HOME_CONTAINER),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
