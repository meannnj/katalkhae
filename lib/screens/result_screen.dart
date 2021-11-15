import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:katalkhae/config/palette.dart';
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Container(
                        padding: const EdgeInsets.only(
                            top: 15, bottom: 15, left: 10, right: 10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 4,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        '지난 1년 우리는 서로를 얼마나 사랑했을까?',
                                        softWrap: true,
                                        //overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          height: 1.3,
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: const [
                                          Text(
                                            'ver. 연인',
                                            style: TextStyle(
                                              letterSpacing: 0,
                                              fontSize: 13,
                                              color: Palette.disableColor,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                          Text(
                                            ' ㅣ ',
                                            style: TextStyle(
                                              letterSpacing: 0,
                                              fontSize: 13,
                                              color: Palette.disableColor,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                          Text(
                                            '레오,알리스',
                                            style: TextStyle(
                                              letterSpacing: 0,
                                              fontSize: 13,
                                              color: Palette.disableColor,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: const [
                                          Text(
                                            '2020.10.01',
                                            style: TextStyle(
                                              letterSpacing: 0,
                                              fontSize: 13,
                                              color: Palette.disableColor,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                          Text(
                                            ' ~ ',
                                            style: TextStyle(
                                              letterSpacing: 0,
                                              fontSize: 13,
                                              color: Palette.disableColor,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                          Text(
                                            '2021.10.01',
                                            style: TextStyle(
                                              letterSpacing: 0,
                                              fontSize: 13,
                                              color: Palette.disableColor,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ]),
                              ),

                              //const Spacer(flex:1),

                              Expanded(
                                flex: 1,
                                child: Container(
                                    width: 50,
                                    height: 50,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                "images/item1.png")))),
                              ),
                            ]),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(390, 50),
                        primary: Colors.white, // background
                        //onPrimary: Palette.mainColor, //foreground
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
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
