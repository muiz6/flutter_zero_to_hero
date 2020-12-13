// import 'package:flutter/material.dart';

// void main() {
//   runApp(Listview());
// }

// class Listview extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.teal,
//           title: Text("Listview"),
//         ),
//         backgroundColor: Colors.tealAccent,
//         body: Padding(
//           padding: EdgeInsets.all(5),
//           child: ListView.builder(
//             itemBuilder: (context, index) {
//               return Padding(
//                 padding: EdgeInsets.all(5),
//                 child: Container(
//                   height: 60,
//                   padding: EdgeInsets.all(10),
//                   color: Colors.teal[300],
//                   child: Center(
//                     child: Text(
//                       "This is a tile at ${index + 1} position.",
//                       style: TextStyle(fontSize: 18),
//                     ),
//                   ),
//                 ),
//               );
//             },
//             itemCount: 100,
//           ),
//         ),
//       ),
//     );
//   }
// }
