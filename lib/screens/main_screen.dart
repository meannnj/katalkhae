import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:katalkhae/config/palette.dart';
import 'item_a.dart';

class ItemScreen extends StatefulWidget {
  const ItemScreen({Key? key}) : super(key: key);

  @override
  _ItemScreenState createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(top:20,bottom:10),
                child: const Text(
                  '카톡 해석 아이템',
                  style: TextStyle(
                    fontSize: 25,
                    color: Palette.mainColor, //Colors.white
                    fontWeight: FontWeight.bold,
                  ),
                  ),
              ),
                  const SizedBox(
                    height: 5.0,
                  ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // 원본 구글 버튼
                    ButtonTheme(
                      //height: 50.0,
                      child: ElevatedButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('images/glogo.png'),
                            const Text(
                              '내가 너보다 더 사랑할까?',
                              style: TextStyle(color: Colors.black87, fontSize: 15.0),
                            ),
                            Opacity(
                              opacity: 0.0,
                              child: Image.asset('images/glogo.png'),
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          padding: EdgeInsets.all(10),
                        ),
                          onPressed: () {
                            //Navigator.pushNamed(context, '/a');
                            Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ItemA()),
                                );
                          }
                        ),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(4.0),
                          ),
                        ),
                      ),
                    ],
                  )
          ],
        ),
      ),
    );
  }
}


// Positioned(
// top: 150,
// left: 20,
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// // 원본 구글 버튼
// ButtonTheme(
// //height: 50.0,
// child: ElevatedButton(
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: [
// Image.asset('images/glogo.png'),
// Text(
// '내가 너보다 더 사랑할까?',
// style: TextStyle(color: Colors.black87, fontSize: 15.0),
// ),
// Opacity(
// opacity: 0.0,
// child: Image.asset('images/glogo.png'),
// ),
// ],
// ),
// style: ElevatedButton.styleFrom(
// primary: Colors.white,
// padding: EdgeInsets.all(10),
// // shape: RoundedRectangleBorder(
// //     borderRadius: BorderRadius.circular(10.0)),
// ),
// onPressed: () {
// //Navigator.pushNamed(context, '/a');
// Navigator.push(
// context,
// MaterialPageRoute(builder: (context) => ItemA()),
// );
// }
// ),
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.all(
// Radius.circular(4.0),
// ),
// ),
// ),
// // ElevatedButton.icon(
// //     icon: const Icon(
// //       Icons.home,
// //       size: 20.0,
// //     ),
// //     label: const Text('GameA'),
// //     style: ElevatedButton.styleFrom(
// //         primary: Colors.black, onSurface: Colors.amber
// //     ),
// //     onPressed: () {
// //       Navigator.pushNamed(context, '/a');
// //     }
// // ),
// // ElevatedButton.icon(
// //     icon: const Icon(
// //       Icons.home,
// //       size: 20.0,
// //     ),
// //     label: Text('GameB'),
// //     style: ElevatedButton.styleFrom(
// //         primary: Colors.black, onSurface: Colors.amber
// //     ),
// //     onPressed: () {
// //       Navigator.pushNamed(context, '/b');
// //     }
// // ),
//
// ],
// ),
// )