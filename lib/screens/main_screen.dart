import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:katalkhae/config/palette.dart';
import 'package:katalkhae/items/my_item.dart';
import 'analyze_katalk_choice.dart';

class MainScreen extends StatelessWidget {
  //const ItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor, //Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Text(
                    '카톡해',
                    style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 2.0,
                      color: Colors.black, //Palette.mainColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    MyItem(
                      image: 'images/item1.png',
                      title: '지난 1년 우리는 서로를 얼마나 사랑했을까?',
                      type: 'ver. 연인',
                      text: '당신과 연인의 지난 1년간의 카카오톡 대화 내용을 분석하여 애정도 그래프 등 사랑의 관계를 해석해드립니다.',
                      buttonLabel: '카톡 해석하기',
                      onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => KatalkChoice()),
                      );
                      },
                    ),

                    const SizedBox(
                      height: 15.0,
                    ),

                    ElevatedButton(
                      onPressed: (){},
                      child: const Text('계속 업로드 예정입니다. :)',style: TextStyle(fontSize: 15)),
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(390,50),
                        primary: Colors.white, // background
                        onPrimary: Palette.mainColor, //foreground
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                      ),
                    )

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
