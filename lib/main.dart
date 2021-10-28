//파이어베이스 연동시
//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
//import 'package:katalkhae/screens/item_screen.dart';
import 'package:katalkhae/screens/item_a.dart';
import 'package:katalkhae/screens/item_b.dart';
import 'package:katalkhae/screens/main_screen.dart';
import 'package:katalkhae/config/palette.dart';
import 'package:katalkhae/screens/more_screen.dart';
import 'package:katalkhae/widget/bottom_bar.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

//파이어 베이스 연동시
// Future<void> main() async{
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Katalkhae',
      debugShowCheckedModeBanner: false, // debug 없애기
      theme: ThemeData(
        primarySwatch: Palette.headerColor, //Colors.blue
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            //physics: NeverScrollableScrollPhysics(),//손으로 좌우 스크롤하는걸 막는다
            children: [
              ItemScreen(),
              //HomeScreen(),
              Container(
                child: Center(
                  child: Text('search'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('save'),
                ),
              ),
              MoreScreen(),
            ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),


      //home: HomeScreen(),

      //다른 화면 송출 중요
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => ItemScreen(),
      //   '/a': (context) => ItemA(),
      //   '/b': (context) => ItemB(),
      //},
    );
  }
}

// 파이어베이스 연동시
// class HomeScreen extends StatelessWidget {
//   //const HomeScreen({Key? key}) : super(key: key);
//   final Stream<QuerySnapshot> katalkBook = FirebaseFirestore.instance.collection('katalkBook').snapshots();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//           '카톡 해석 아이템',
//            style: TextStyle(
//              fontSize: 25,
//              color: Palette.mainColor,
//              fontWeight: FontWeight.bold,
//            ),
//         ),
//             Container(
//               height: 250,
//               padding: const EdgeInsets.symmetric(vertical: 20),
//               child: StreamBuilder<QuerySnapshot>(
//                       stream: katalkBook,
//                       builder: (
//                         BuildContext context,
//                         AsyncSnapshot<QuerySnapshot> snapshot,
//                     ) {
//                         if (snapshot.hasError) {
//                           return Text('wrong');
//                         }
//                         if (snapshot.connectionState ==
//                             ConnectionState.waiting) {
//                           return Text('Loading');
//                         }
//                         final data = snapshot.requireData;
//
//                         return ListView.builder(
//                           itemCount: data.size,
//                           itemBuilder: (context, index) {
//                             return Text('My name is ${data
//                                 .docs[index]['mid']} and You are ${data
//                                 .docs[index]['mtarget']}, favoriet moment is ${data
//                                 .docs[index]['mtext']}, time is ${data
//                                 .docs[index]['mtime']}'
//                             );
//                           },
//                         );
//                       }
//             ),
//             )
//
//           ],
//         ),
//       ),
//     );
//   }
// }

