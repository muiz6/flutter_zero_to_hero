import 'package:covid_tracker_final/dimens.dart';
import 'package:covid_tracker_final/global_stats/stat_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StatContent extends StatelessWidget {
  final int _crossAxisCount = 6;
  final int _itemCount = 5;
  final List<int> _colors = [
    0xFFf5ae58,
    0xFFff3d3d,
    0xFF92f25c,
    0xFF5db6f5,
    0xFFa25ffa,
  ];

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      crossAxisCount: _crossAxisCount,
      itemCount: _itemCount,
      crossAxisSpacing: Dimens.INSET_S,
      mainAxisSpacing: Dimens.INSET_S,
      itemBuilder: (BuildContext context, int index) {
        return StatTile(color: Color(_colors[index]));
      },
      staggeredTileBuilder: (int index) {
        if (index < 2) {
          return new StaggeredTile.count(3, 1);
        }
        return StaggeredTile.count(2, 1);
      },
    );
  }
}
