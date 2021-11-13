import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:katalkhae/config/palette.dart';

class MemoryScreen extends StatelessWidget {
  //const MoreScreen({Key? key}) : super(key: key);

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
                    '메모리 박스',
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
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: const Size(390, 50),
                        primary: Colors.white, // background
                        //onPrimary: Palette.mainColor, //foreground
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                      ),
                      // decoration: const BoxDecoration(
                      //   color: Colors.white,
                      //   // border: Border.all(
                      //   //   color: Colors.red,
                      //   // ),
                      //   borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      // ),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top:15,bottom:15, left:15,right:15),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    '여자친구님과의 대화',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height:15,
                                  ),

                                  TextButton(
                                      onPressed: () {},
                                      style: TextButton.styleFrom(
                                        primary: Colors.black,
                                        minimumSize: const Size(390, 40),
                                        backgroundColor: Palette.talkColor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(15),
                                          //side: BorderSide(color: Colors.red)
                                        ),
                                      ),
                                      child: Flexible(
                                        child: Container(
                                          padding: const EdgeInsets.only(left:5,right:5),
                                            alignment: Alignment(-1,0),
                                            child: Text('난 너를 알게되어서 참 행복해 앞으로도 행복하자.난 너를 알게되어서 참 행복해 앞으로도 행복하자')),
                                      )),

                                  const SizedBox(
                                    height:5,
                                  ),

                                  const Text(
                                    '   여자친구 ㅣ 2020년 10월 1일 오전 11시 24분',
                                    style: TextStyle(
                                      letterSpacing: 1.0,
                                      fontSize: 12,
                                      color: Colors.black,
                                      //fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  TextButton(
                                      onPressed: () {},
                                      style: TextButton.styleFrom(
                                        primary: Colors.black,
                                        minimumSize: const Size(390, 40),
                                        backgroundColor: Palette.talkColor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(15),
                                          //side: BorderSide(color: Colors.red)
                                        ),
                                      ),
                                      child: Flexible(
                                        child: Container(
                                            padding: const EdgeInsets.only(left:5,right:5),
                                            alignment: Alignment(-1,0),
                                            child: Text('난 너를 알게되어서 참 행복해 앞으로도 행복하자.난 너를 알게되어서 참 행복해 앞으로도 행복하자')),
                                      )),

                                  const SizedBox(
                                    height:5,
                                  ),

                                  const Text(
                                    '   여자친구 ㅣ 2020년 10월 1일 오전 11시 24분',
                                    style: TextStyle(
                                      letterSpacing: 1.0,
                                      fontSize: 12,
                                      color: Colors.black,
                                      //fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ]),
                          ),
                        ],
                      ),
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




