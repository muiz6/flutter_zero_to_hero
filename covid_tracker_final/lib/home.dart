import 'package:covid_tracker_final/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// Screen containing bottom appbar
class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _pgIndex = 0;
  final PageController _pgController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pgController,
        children: [
          Center(child: Text('page 1')),
          Center(child: Text('page 2')),
          Center(child: Text('page 3')),
          Center(child: Text('page 4')),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: _pgIndex,
        onTap: (int index) {
          setState(() {
            _pgIndex = index;
            _pgController.animateToPage(
              index,
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.public),
            label: Strings.GLOBAL,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_sharp),
            label: Strings.PAKISTAN,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flag),
            label: Strings.COUNTRIES,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: Strings.INFO,
          ),
        ],
      ),
    );
  }
}
