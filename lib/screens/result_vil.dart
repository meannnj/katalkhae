import 'package:flutter/material.dart';
import 'package:katalkhae/config/palette.dart';
import 'package:katalkhae/items/my_result.dart';
import 'package:katalkhae/items/my_vilResult.dart';

class ResultVilScreen extends StatelessWidget {
  const ResultVilScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            '빌런 찾기 결과!',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: false,
          elevation: 0.0,
          backgroundColor: Palette.backgroundColor,
          automaticallyImplyLeading: false,
          //leading: Container(),
        ),
        //extendBodyBehindAppBar: true, // body 위에 appbar
        body: Container(
          //padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
          child: Column(children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text('송지아님, 김민제님 외 3명 카톡',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('2021.02.19 ~ 2022.02.19',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text('우리 톡방의 빌런은?',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          )),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(0),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 15.0,
                              ),
                              MyVilResult(
                                rank: '1위',
                                image: 'images/item1.png',
                                name: '송지아',
                                type: '최고의 빌런',
                                score: '95점',
                                onPressed: () {
                                },
                              ),

                              MyVilResult(
                                rank: '2위',
                                image: 'images/glogo.png',
                                name: 'Jay Park',
                                type: '투덜이',
                                score: '89점',
                                onPressed: () {
                                },
                              ),

                              MyVilResult(
                                rank: '2위',
                                image: 'images/glogo.png',
                                name: 'Jay Park',
                                type: '투덜이',
                                score: '89점',
                                onPressed: () {
                                },
                              ),
                              MyVilResult(
                                rank: '2위',
                                image: 'images/glogo.png',
                                name: 'Jay Park',
                                type: '투덜이',
                                score: '89점',
                                onPressed: () {
                                },
                              ),
                              MyVilResult(
                                rank: '2위',
                                image: 'images/glogo.png',
                                name: 'Jay Park',
                                type: '투덜이',
                                score: '89점',
                                onPressed: () {
                                },
                              ),
                              MyVilResult(
                                rank: '2위',
                                image: 'images/glogo.png',
                                name: 'Jay Park',
                                type: '투덜이',
                                score: '89점',
                                onPressed: () {
                                },
                              ),
                              MyVilResult(
                                rank: '2위',
                                image: 'images/glogo.png',
                                name: 'Jay Park',
                                type: '투덜이',
                                score: '89점',
                                onPressed: () {
                                },
                              ),
                              MyVilResult(
                                rank: '2위',
                                image: 'images/glogo.png',
                                name: 'Jay Park',
                                type: '투덜이',
                                score: '89점',
                                onPressed: () {
                                },
                              ),


                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //하단 고정 버튼
            SizedBox(
                height: 60,
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    '확인',
                    style: TextStyle(
                      //letterSpacing: 1.0,
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    //minimumSize: const Size(390, 0),
                    primary: Palette.mainColor, // background
                    // //onPrimary: Palette.mainColor, //foreground
                    shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
                  ),

                )
            ),

          ]),
        ));
  }
}
