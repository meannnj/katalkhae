import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:katalkhae/config/palette.dart';

class talkDetail extends StatelessWidget {
  const talkDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            '대화 자세히 보기',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          elevation: 0.0,
          backgroundColor: Palette.backgroundColor,
        ),
        body: Scaffold(
          backgroundColor: Palette.backgroundColor, //Colors.white,
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 0, left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            children: [
                              Text(
                                '알리스',
                                style: TextStyle(
                                  letterSpacing: 1.0,
                                  fontSize: 12,
                                  color: Colors.black,
                                  //fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                ' ㅣ ',
                                style: TextStyle(
                                  letterSpacing: 1.0,
                                  fontSize: 12,
                                  color: Colors.black,
                                  //fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '2020년 10월 1일 오전 11시 25분',
                                style: TextStyle(
                                  letterSpacing: 1.0,
                                  fontSize: 12,
                                  color: Colors.black,
                                  //fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 5,
                        ),

                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => talkDetail()),
                              );
                            },
                            style: TextButton.styleFrom(
                              primary: Colors.black,
                              minimumSize: Size(390, 40),
                              backgroundColor: Palette.talkColor,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(15),
                                //side: BorderSide(color: Colors.red)
                              ),
                            ),
                            child: Flexible(
                              child: Container(
                                  padding: EdgeInsets.only(
                                      left: 5, right: 5),
                                  alignment: Alignment(-1, 0),
                                  child: Text(
                                      '난 너를 알게되어서 참 행복해 앞으로도 행복하자.난 너를 알게되어서 참 행복해 앞으로도 행복하자')),
                            )),

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
        )
        );
  }
}
