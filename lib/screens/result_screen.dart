import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:katalkhae/config/palette.dart';
import 'package:katalkhae/items/my_result.dart';
import 'analyze_katalk_choice.dart';

class ResultScreen extends StatelessWidget {
  //const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor, //Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                  child: Text(
                    '결과',
                    style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 2.0,
                      color: Colors.black, //Palette.mainColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    MyResult(
                      image: 'images/item1.png',
                      title: '지난 1년 우리는 서로를 얼마나 사랑했을까?',
                      type: 'ver. 연인',
                      target: '레오,알리스',
                      date1: '2020.10.01',
                      date2: '2021.10.01',
                      onPressed: () {},
                    ),

                    const SizedBox(
                      height: 15.0,
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
