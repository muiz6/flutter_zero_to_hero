import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab Layout'),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                ),
                text: 'Home',
              ),
              Tab(
                icon: Icon(
                  Icons.info,
                ),
                text: 'About',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text('This is home page.'),
            ),
            Center(
              child: Text('This is about page.'),
            ),
          ],
        ),
      ),
    );
  }
}
