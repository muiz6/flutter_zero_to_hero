import 'package:flutter/material.dart';
import 'countries.dart';

class CountryTile extends StatelessWidget {
  CountryTile({
    this.index,
    this.countryName,
    this.cases,
  });

  final int index;
  final String countryName;
  final int cases;

  @override
  Widget build(BuildContext context) {
    if (countryNames[countryName] == null) print(countryName);

    return Container(
      margin: EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(8)),
      child: ListTile(
        title: Text(
          countryNames[countryName],
        ),
        trailing: Icon(Icons.arrow_forward_ios),
        subtitle: Text("$cases cases"),
        leading: Padding(
          padding: const EdgeInsets.only(top: 14.0),
          child: Text(
            "$index",
          ),
        ),
      ),
    );
  }
}

// Container(
//       height: 80,
//       margin: EdgeInsets.symmetric(vertical: 5),
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: Colors.black,
//         ),
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: Row(
//         children: [
//           Container(
//             width: 23,
//             child: Text(
//               "${index + 1}",
//               textAlign: TextAlign.center,
//             ),
//           ),
//           Container(
//             color: Colors.black,
//             width: 1,
//           ),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(
//                     countryNames[countryName] ?? countryName,
//                     maxLines: 1,
//                     overflow: TextOverflow.ellipsis,
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: cases > 1 ? Text("$cases cases") : Text("$cases case"),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Icon(Icons.arrow_forward_ios),
//           ),
//         ],
//       ),
//     )
