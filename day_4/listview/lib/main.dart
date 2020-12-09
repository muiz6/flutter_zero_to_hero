import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListViewApp();
  }
}

class ListViewApp extends StatefulWidget {
  @override
  _ListViewAppState createState() => _ListViewAppState();
}

class _ListViewAppState extends State<ListViewApp> {
  Widget tile(String text) {
    return Center(
      child: Text(
        text,
        style: TextStyle(fontSize: 25, letterSpacing: 5, wordSpacing: 5),
      ),
    );
  }

  String str = "tile";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView app"),
          backgroundColor: Colors.teal,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.teal,
          isExtended: true,
          onPressed: () {
            setState(() {
              str = "item";
            });
          },
        ),
        backgroundColor: Colors.tealAccent,
        body: ListView.builder(
          itemCount: 1000,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              color: Colors.teal[300],
              height: 60,
              padding: EdgeInsets.all(10),
              child: tile("This is #${index + 1} $str"),
            );
          },
        ),
      ),
    );
  }
}
