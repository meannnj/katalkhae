// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
// import 'package:katalkhae/config/palette.dart';
//
// class ItemScreen extends StatelessWidget {
//   //const ItemScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Palette.subColor,
//       body: Column(
//         children: [
//           Positioned(
//             top: 0,
//             right: 0,
//             left: 0,
//             child: Container(
//               padding: EdgeInsets.only(top: 40, left:20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   RichText(text: TextSpan(
//                       text: '○△□',
//                       style: TextStyle(
//                         letterSpacing: 1.0,
//                         fontSize: 25,
//                         color: Palette.mainColor, //Colors.white
//                         fontWeight: FontWeight.bold,
//                       ),
//                       children: [
//                         TextSpan(
//                           text: ' GAME RULE BOOK',
//                           style: TextStyle(
//                             letterSpacing: 1.0,
//                             fontSize: 25,
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ]
//                   ),
//                   ),
//                   SizedBox(
//                     height: 5.0,
//                   ),
//                   Text('We explain the game method and production method from Squid Games.',
//                     style: TextStyle(
//                         letterSpacing: 1.0,
//                         //fontSize: 25,
//                         color: Colors.amberAccent
//                       // fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 5.0,
//                   ),
//                   ElevatedButton.icon(
//                       icon: const Icon(
//                         Icons.home,
//                         size: 20.0,
//                       ),
//                       label: const Text('GameA'),
//                       style: ElevatedButton.styleFrom(
//                           primary: Colors.black, onSurface: Colors.amber
//                       ),
//                       onPressed: () {
//                         Navigator.pushNamed(context, '/a');
//                       }
//                   ),
//                   ElevatedButton.icon(
//                       icon: const Icon(
//                         Icons.home,
//                         size: 20.0,
//                       ),
//                       label: Text('GameB'),
//                       style: ElevatedButton.styleFrom(
//                           primary: Colors.black, onSurface: Colors.amber
//                       ),
//                       onPressed: () {
//                         Navigator.pushNamed(context, '/b');
//                       }
//                   ),
//                 ],
//               ),
//             ),
//           ),
//
//         ],
//       ),
//     );
//   }
// }
