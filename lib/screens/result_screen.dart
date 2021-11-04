import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:katalkhae/config/palette.dart';
import 'analyze_katalk_choice.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {

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
                      onPressed: (){},
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text('지난 1년 우리는 서로를 얼마나 사랑했을까?',
                                    style: TextStyle(
                                      color: Palette.mainColor,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text('ver. 연인ㅣ레오,알리스',
                                    style: TextStyle(
                                      letterSpacing: 1.0,
                                      fontSize: 10,
                                      color: Palette.disableColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text('2020.10.01 ~ 2021.10.01',
                                    style: TextStyle(
                                      //letterSpacing: 1.0,
                                      fontSize: 10,
                                      color: Palette.disableColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                ]
                            ),


                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset(
                                'images/item1.png',
                                height: 50,
                                width: 50,
                                //fit: BoxFit.fill,
                              ),
                            ),

                          ]
                      ),

                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(390,50),
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
