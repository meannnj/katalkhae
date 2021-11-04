//파이어베이스 연동시
//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:katalkhae/screens/main_screen.dart';
import 'package:katalkhae/config/palette.dart';
import 'package:katalkhae/screens/more_screen.dart';
import 'package:katalkhae/screens/result_screen.dart';
import 'package:katalkhae/widget/bottom_bar.dart';

void main() => runApp(const MyApp());

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
              const ItemScreen(),
              //HomeScreen(),
              const ResultScreen(),
              const Center(
                child: Text('save'),
              ),
              MoreScreen(),
            ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}
