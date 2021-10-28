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
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '카톡 해석 아이템',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black, //Palette.mainColor,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                        const SizedBox(
                          height: 20.0,
                        ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          ElevatedButton(
                            child: Padding(
                              padding: const EdgeInsets.only(left:16.0,right:16.0),
                              child: Column(
                                children: [
                                  // FittedBox(
                                  //   child: Image.asset('images/item1.png'),
                                  //   fit: BoxFit.fill,
                                  // ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'images/item1.png',
                                      // width: 110.0,
                                      // height: 110.0,
                                      fit: BoxFit.fill,
                                    ),
                                  ),

                                  const SizedBox(
                                    height: 10.0,
                                  ),

                                  Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text('지난 1년 내가 널 더 사랑했을까?',
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                        Text('ver 연',
                                          style: TextStyle(
                                            letterSpacing: 1.0,
                                            fontSize: 15,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),


                                        SizedBox(
                                          height: 5.0,
                                        ),

                                        SizedBox(
                                          height: 10.0,
                                        ),
                                        Text('지난 1년간의 카톡 애정표현을 통해 사랑의 흐름을 해석해드립니다.',
                                          style: TextStyle(
                                            letterSpacing: 1.0,
                                            fontSize: 16,
                                            color: Colors.black,
                                            //fontWeight: FontWeight.bold,
                                          ),
                                        ),


                                      ]
                                  ),

                                  // Row(
                                  //   mainAxisAlignment: MainAxisAlignment.start,
                                  //   children: const [
                                  //     Text('지난 1년 내가 널 더 사랑했을까?',
                                  //       style: TextStyle(
                                  //           color: Colors.black87,
                                  //           fontSize: 20.0,
                                  //           fontWeight: FontWeight.bold,
                                  //       ),
                                  //     ),
                                  //
                                  //     // Opacity(
                                  //     //   opacity: 0.0,
                                  //     // ),
                                  //   ],
                                  // ),


                                ],
                              ),
                            ),

                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ItemA()),
                              );
                            },
                            // child: Text('Go to A'),
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.only(top: 20, bottom: 20),
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                            ),
                          ),

                          const SizedBox(
                            height: 20.0,
                          ),



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