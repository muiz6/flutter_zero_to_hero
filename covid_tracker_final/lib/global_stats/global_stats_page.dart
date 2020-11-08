import 'package:covid_tracker_final/clear_app_bar.dart';
import 'package:covid_tracker_final/dimens.dart';
import 'package:covid_tracker_final/global_stats/plain_scroll_behavior.dart';
import 'package:covid_tracker_final/global_stats/curved_tab_bar.dart';
import 'package:covid_tracker_final/global_stats/stat_chart.dart';
import 'package:covid_tracker_final/global_stats/stat_content.dart';
import 'package:covid_tracker_final/strings.dart';
import 'package:flutter/material.dart';

class GlobalStatsPage extends StatefulWidget {
  @override
  _StatsPageState createState() => _StatsPageState();
}

class _StatsPageState extends State<GlobalStatsPage> {
  final double _heightTbv = 200;
  final double _heightTabBar = 25;
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
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
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
                          padding:
                              EdgeInsets.symmetric(horizontal: Dimens.INSET_M),
                          child: Container(
                            height: _heightTabBar,
                            child: CurvedTabBar(
                              tabs: _tabs,
                            ),
                          ),
                        ),
                        Container(
                          height: _heightTbv,
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
                ],
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(Dimens.RADIUS_HOME_CONTAINER),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(
                    Dimens.INSET_M,
                  ),
                  child: StatChart(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
