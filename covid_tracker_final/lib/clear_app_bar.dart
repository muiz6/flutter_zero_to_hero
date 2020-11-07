import 'package:flutter/material.dart';

class ClearAppBar extends StatelessWidget {
  final bool centerTitle;
  final Widget title;

  ClearAppBar({
    this.title,
    this.centerTitle,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: centerTitle,
      title: title,
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}
