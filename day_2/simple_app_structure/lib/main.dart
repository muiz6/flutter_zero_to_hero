import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Intro App"),
          backgroundColor: Colors.red[400],
        ),
        backgroundColor: Colors.white60,
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Abeer Rizvi\n\n\nFlutter Developer\n\n\nPhone: 0900-78601\n\n\nP U C I T\nNC\nLHR",
            textAlign: TextAlign.center,
            // textScaleFactor: ,
            // textDirection: TextDirection.ltr,
            style: TextStyle(
              // fontStyle: FontStyle.italic,
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w500,
              height: 1.5,
              letterSpacing: 15,
              // wordSpacing: ,
            ),
          ),
        ),
      ),
    );
  }
}
