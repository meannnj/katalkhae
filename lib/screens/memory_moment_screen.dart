import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:katalkhae/config/palette.dart';
import 'package:favorite_button/favorite_button.dart';

class MemoryMoment extends StatelessWidget {
  //const talkDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            '메모리 모멘트',
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
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //디바이더
                        Container(
                          height: 1,
                          width: double.maxFinite,
                          color: Colors.grey[300],
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Container(
                          height: 20,
                          color: Colors.transparent,
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 0,
                                    color: Colors.white,
                                  ),
                                  color: Colors.transparent,
                                  borderRadius: new BorderRadius.all(
                                      Radius.circular(50))),
                              child: new Center(
                                child: new Text(
                                  "2021년 10월 1일 일요일",
                                  style: TextStyle(fontSize: 12),
                                ),
                              )),
                        ),

                        SizedBox(
                          height: 2,
                        ),
                        // TextField(
                        //   decoration: InputDecoration(
                        //       border: OutlineInputBorder(
                        //         borderRadius: BorderRadius.circular(50.0),
                        //       ),
                        //       filled: true,
                        //       hintStyle: TextStyle(color: Colors.grey[800]),
                        //       hintText: "2021년 10월 1일 일요일",
                        //       fillColor: Colors.white54),
                        // ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                            SizedBox(
                              height: 2,
                            ),
                            Row(children: [
                              Expanded(
                                flex: 8,
                                child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      primary: Colors.black,
                                      minimumSize: Size(390, 40),
                                      backgroundColor: Colors.white,
                                      side: BorderSide(
                                          color: Colors.grey, width: 1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        //side: BorderSide(color: Colors.red)
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Flexible(
                                        child: Container(
                                            padding: EdgeInsets.only(
                                                left: 5, right: 5),
                                            alignment: Alignment(-1, 0),
                                            child: Text(
                                                '난 너를 알게되어서 참 행복해 앞으로도 행복하자.')),
                                      ),
                                      ]
                                    )),
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      FavoriteButton(
                                        isFavorite: false,
                                        iconSize: 30,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      ),
                                      Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 0,
                                                color: Colors.white,
                                              ),
                                              color: Colors.transparent,
                                              borderRadius:
                                                  new BorderRadius.all(
                                                      Radius.circular(50))),
                                          child: new Center(
                                            child: new Text(
                                              "오후 10:07",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          )),
                                    ],
                                  ))
                            ]),
                            SizedBox(
                              height: 5,
                            ),
                            Row(children: [
                              Expanded(
                                flex: 8,
                                child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      primary: Colors.black,
                                      minimumSize: Size(390, 40),
                                      backgroundColor: Palette.talkColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        //side: BorderSide(color: Colors.red)
                                      ),
                                    ),
                                    child: Row(
                                        children: [
                                          Flexible(
                                            child: Container(
                                                padding: EdgeInsets.only(
                                                    left: 5, right: 5),
                                                alignment: Alignment(-1, 0),
                                                child: Text(
                                                    '난 너를 알게되어서 참 행복해 앞으로도 행복하자.')),
                                          ),
                                        ]
                                    )),
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      FavoriteButton(
                                        isFavorite: true,
                                        iconSize: 30,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      ),
                                      Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 0,
                                                color: Colors.white,
                                              ),
                                              color: Colors.transparent,
                                              borderRadius:
                                                  new BorderRadius.all(
                                                      Radius.circular(50))),
                                          child: new Center(
                                            child: new Text(
                                              "오후 10:08",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          )),
                                    ],
                                  ))
                            ]),
                            SizedBox(
                              height: 5,
                            ),
                            Row(children: [
                              Expanded(
                                flex: 8,
                                child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      primary: Colors.black,
                                      minimumSize: Size(390, 40),
                                      backgroundColor: Colors.white,
                                      side: BorderSide(
                                          color: Colors.grey, width: 1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        //side: BorderSide(color: Colors.red)
                                      ),
                                    ),
                                    child: Row(
                                        children: [
                                          Flexible(
                                            child: Container(
                                                padding: EdgeInsets.only(
                                                    left: 5, right: 5),
                                                alignment: Alignment(-1, 0),
                                                child: Text(
                                                    '난 너를 알게되어서 참 행복해 앞으로도 행복하자.')),
                                          ),
                                        ]
                                    )),
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      FavoriteButton(
                                        isFavorite: false,
                                        iconSize: 30,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      ),
                                      Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 0,
                                                color: Colors.white,
                                              ),
                                              color: Colors.transparent,
                                              borderRadius:
                                                  new BorderRadius.all(
                                                      Radius.circular(50))),
                                          child: new Center(
                                            child: new Text(
                                              "오후 10:07",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          )),
                                    ],
                                  ))
                            ]),
                          ],
                        ),

                        SizedBox(
                          height: 15,
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '레오',
                              style: TextStyle(
                                letterSpacing: 1.0,
                                fontSize: 12,
                                color: Colors.black,
                                //fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Row(children: [
                              Expanded(
                                flex: 8,
                                child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      primary: Colors.black,
                                      minimumSize: Size(390, 40),
                                      backgroundColor: Colors.white,
                                      side: BorderSide(
                                          color: Colors.grey, width: 1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        //side: BorderSide(color: Colors.red)
                                      ),
                                    ),
                                    child: Row(
                                        children: [
                                          Flexible(
                                            child: Container(
                                                padding: EdgeInsets.only(
                                                    left: 5, right: 5),
                                                alignment: Alignment(-1, 0),
                                                child: Text(
                                                    '난 너를 알게되어서 참 행복해 앞으로도 행복하자.')),
                                          ),
                                        ]
                                    )),
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      FavoriteButton(
                                        isFavorite: false,
                                        iconSize: 30,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      ),
                                      Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 0,
                                                color: Colors.white,
                                              ),
                                              color: Colors.transparent,
                                              borderRadius:
                                                  new BorderRadius.all(
                                                      Radius.circular(50))),
                                          child: new Center(
                                            child: new Text(
                                              "오후 10:07",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          )),
                                    ],
                                  ))
                            ]),
                            SizedBox(
                              height: 5,
                            ),
                            Row(children: [
                              Expanded(
                                flex: 8,
                                child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      primary: Colors.black,
                                      minimumSize: Size(390, 40),
                                      backgroundColor: Colors.white,
                                      side: BorderSide(
                                          color: Colors.grey, width: 1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        //side: BorderSide(color: Colors.red)
                                      ),
                                    ),
                                    child: Row(
                                        children: [
                                          Flexible(
                                            child: Container(
                                                padding: EdgeInsets.only(
                                                    left: 5, right: 5),
                                                alignment: Alignment(-1, 0),
                                                child: Text(
                                                    '난 너를 알게되어서 참 행복해 앞으로도 행복하자.')),
                                          ),
                                        ]
                                    )),
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      FavoriteButton(
                                        isFavorite: false,
                                        iconSize: 30,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      ),
                                      Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 0,
                                                color: Colors.white,
                                              ),
                                              color: Colors.transparent,
                                              borderRadius:
                                                  new BorderRadius.all(
                                                      Radius.circular(50))),
                                          child: new Center(
                                            child: new Text(
                                              "오후 10:07",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          )),
                                    ],
                                  ))
                            ]),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ),

                        //다른날2
                        //디바이더
                        Container(
                          height: 1,
                          width: double.maxFinite,
                          color: Colors.grey[300],
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Container(
                          height: 20,
                          color: Colors.transparent,
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 0,
                                    color: Colors.white,
                                  ),
                                  color: Colors.transparent,
                                  borderRadius: new BorderRadius.all(
                                      Radius.circular(50))),
                              child: new Center(
                                child: new Text(
                                  "2021년 10월 1일 일요일",
                                  style: TextStyle(fontSize: 12),
                                ),
                              )),
                        ),

                        SizedBox(
                          height: 2,
                        ),
                        // TextField(
                        //   decoration: InputDecoration(
                        //       border: OutlineInputBorder(
                        //         borderRadius: BorderRadius.circular(50.0),
                        //       ),
                        //       filled: true,
                        //       hintStyle: TextStyle(color: Colors.grey[800]),
                        //       hintText: "2021년 10월 1일 일요일",
                        //       fillColor: Colors.white54),
                        // ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                            SizedBox(
                              height: 2,
                            ),
                            Row(children: [
                              Expanded(
                                flex: 8,
                                child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      primary: Colors.black,
                                      minimumSize: Size(390, 40),
                                      backgroundColor: Colors.white,
                                      side: BorderSide(
                                          color: Colors.grey, width: 1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        //side: BorderSide(color: Colors.red)
                                      ),
                                    ),
                                    child: Row(
                                        children: [
                                          Flexible(
                                            child: Container(
                                                padding: EdgeInsets.only(
                                                    left: 5, right: 5),
                                                alignment: Alignment(-1, 0),
                                                child: Text(
                                                    '난 너를 알게되어서 참 행복해 앞으로도 행복하자.')),
                                          ),
                                        ]
                                    )),
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      FavoriteButton(
                                        isFavorite: false,
                                        iconSize: 30,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      ),
                                      Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 0,
                                                color: Colors.white,
                                              ),
                                              color: Colors.transparent,
                                              borderRadius:
                                                  new BorderRadius.all(
                                                      Radius.circular(50))),
                                          child: new Center(
                                            child: new Text(
                                              "오후 10:07",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          )),
                                    ],
                                  ))
                            ]),
                            Row(children: [
                              Expanded(
                                flex: 8,
                                child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      primary: Colors.black,
                                      minimumSize: Size(390, 40),
                                      backgroundColor: Colors.white,
                                      side: BorderSide(
                                          color: Colors.grey, width: 1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        //side: BorderSide(color: Colors.red)
                                      ),
                                    ),
                                    child: Row(
                                        children: [
                                          Flexible(
                                            child: Container(
                                                padding: EdgeInsets.only(
                                                    left: 5, right: 5),
                                                alignment: Alignment(-1, 0),
                                                child: Text(
                                                    '난 너를 알게되어서 참 행복해 앞으로도 행복하자.')),
                                          ),
                                        ]
                                    )),
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      FavoriteButton(
                                        isFavorite: false,
                                        iconSize: 30,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      ),
                                      Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 0,
                                                color: Colors.white,
                                              ),
                                              color: Colors.transparent,
                                              borderRadius:
                                                  new BorderRadius.all(
                                                      Radius.circular(50))),
                                          child: new Center(
                                            child: new Text(
                                              "오후 10:07",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          )),
                                    ],
                                  ))
                            ]),
                          ],
                        ),

                        SizedBox(
                          height: 15,
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '레오',
                              style: TextStyle(
                                letterSpacing: 1.0,
                                fontSize: 12,
                                color: Colors.black,
                                //fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Row(children: [
                              Expanded(
                                flex: 8,
                                child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      primary: Colors.black,
                                      minimumSize: Size(390, 40),
                                      backgroundColor: Colors.white,
                                      side: BorderSide(
                                          color: Colors.grey, width: 1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        //side: BorderSide(color: Colors.red)
                                      ),
                                    ),
                                    child: Row(
                                        children: [
                                          Flexible(
                                            child: Container(
                                                padding: EdgeInsets.only(
                                                    left: 5, right: 5),
                                                alignment: Alignment(-1, 0),
                                                child: Text(
                                                    '난 너를 알게되어서 참 행복해 앞으로도 행복하자.')),
                                          ),
                                        ]
                                    )),
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      FavoriteButton(
                                        isFavorite: false,
                                        iconSize: 30,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      ),
                                      Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 0,
                                                color: Colors.white,
                                              ),
                                              color: Colors.transparent,
                                              borderRadius:
                                                  new BorderRadius.all(
                                                      Radius.circular(50))),
                                          child: new Center(
                                            child: new Text(
                                              "오후 10:07",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          )),
                                    ],
                                  ))
                            ]),
                            SizedBox(
                              height: 5,
                            ),
                            Row(children: [
                              Expanded(
                                flex: 8,
                                child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      primary: Colors.black,
                                      minimumSize: Size(390, 40),
                                      backgroundColor: Colors.white,
                                      side: BorderSide(
                                          color: Colors.grey, width: 1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        //side: BorderSide(color: Colors.red)
                                      ),
                                    ),
                                    child: Row(
                                        children: [
                                          Flexible(
                                            child: Container(
                                                padding: EdgeInsets.only(
                                                    left: 5, right: 5),
                                                alignment: Alignment(-1, 0),
                                                child: Text(
                                                    '난 너를 알게되어서 참 행복해 앞으로도 행복하자.')),
                                          ),
                                        ]
                                    )),
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      FavoriteButton(
                                        isFavorite: false,
                                        iconSize: 30,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      ),
                                      Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 0,
                                                color: Colors.white,
                                              ),
                                              color: Colors.transparent,
                                              borderRadius:
                                                  new BorderRadius.all(
                                                      Radius.circular(50))),
                                          child: new Center(
                                            child: new Text(
                                              "오후 10:07",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          )),
                                    ],
                                  ))
                            ]),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
