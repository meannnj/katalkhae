import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:katalkhae/config/palette.dart';
import 'package:katalkhae/screens/privacy_policy.dart';

class MoreScreen extends StatelessWidget {
  //const MoreScreen({Key? key}) : super(key: key);

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
                    '설정',
                    style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 2.0,
                      color: Colors.black, //Palette.mainColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                Padding(
                  padding: EdgeInsets.only(left:10),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '앱 정보',
                        style: TextStyle(
                          color: Palette.disableColor,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          ),
                      ),

                      TextButton(
                          onPressed: (){},
                          child:const Padding(
                          padding: EdgeInsets.only(top:10,bottom:10),
                            child: Text(
                              '앱 버전 1.00',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          style: TextButton.styleFrom(
                            //backgroundColor: Colors.white,
                            primary: Colors.black,
                          )
                      ),
                      TextButton(
                          onPressed: (){},
                          child:const Padding(
                            padding: EdgeInsets.only(top:10,bottom:10),
                            child: Text(
                              '공유하기',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          style: TextButton.styleFrom(
                            //backgroundColor: Colors.white,
                            //minimumSize: const Size(390, 40),
                            primary: Colors.black,
                          )
                      ),
                      TextButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => privacy()),
                              );
                            },
                          child: const Padding(
                            padding: EdgeInsets.only(top:10,bottom:10),
                            child: Text(
                              '개인정보처리방침',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          style: TextButton.styleFrom(
                            //backgroundColor: Colors.white,
                            primary: Colors.black,
                          )
                      ),

                      const SizedBox(
                        height: 15,
                      ),

                      const Text(
                        '문의하기',
                        style: TextStyle(
                          color: Palette.disableColor,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      TextButton(
                          onPressed: (){},
                          child:const Padding(
                            padding: EdgeInsets.only(top:10,bottom:10),
                            child: Text(
                              '이메일 문의하기',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          style: TextButton.styleFrom(
                            //backgroundColor: Colors.white,
                            primary: Colors.black,
                          )
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}




