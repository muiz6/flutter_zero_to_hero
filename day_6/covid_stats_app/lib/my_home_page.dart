import 'dart:ffi';

import 'country_list_tile.dart';
import 'country_provider.dart';
import 'detail_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final provider = CountryProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Countries"),
      ),
      // backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(5),
        child: FutureBuilder(
          future: provider.fetchApi(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              print("Hooooooooooooo gya.");
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(5),
                    child: GestureDetector(
                      child: CountryListTile(
                        country: snapshot.data[index],
                      ),
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          DetailPage.routeName,
                          arguments: snapshot.data[index],
                        );
                      },
                    ),
                  );
                },
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
