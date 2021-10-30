import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:katalkhae/config/palette.dart';
import 'analyze_katalk_choice.dart';

class ItemScreen extends StatefulWidget {
  const ItemScreen({Key? key}) : super(key: key);

  @override
  _ItemScreenState createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,//Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top:0, left:20, right:20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
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
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          // border: Border.all(
                          //   color: Colors.red,
                          // ),
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft : Radius.circular(15.0),
                              topRight : Radius.circular(15.0),
                            ),
                            child: Image.asset(
                              'images/item1.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget> [
                                  const Text('지난 1년 우리는 서로를 얼마나 사랑했을까?',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  const Text('ver. 연인',
                                    style: TextStyle(
                                      letterSpacing: 1.0,
                                      fontSize: 15,
                                      color: Palette.disableColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  const Text('당신과 연인의 지난 1년간의 카카오톡 대화 내용을 분석하여 애정도 그래프 등 사랑의 관계를 해석해드립니다.',
                                    style: TextStyle(
                                      //letterSpacing: 1.0,
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15.0,
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => ItemA()),
                                        );
                                      },
                                      style: TextButton.styleFrom(
                                          primary: Colors.white,
                                          minimumSize: const Size(390,40),
                                          backgroundColor: Palette.mainColor,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(50.0),
                                              //side: BorderSide(color: Colors.red)
                                          ),
                                      ),
                                      child: const Text('카톡 해석하기')
                                  ),
                                  const SizedBox(
                                    height: 15.0,
                                  ),
                                ]
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 20.0,
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
