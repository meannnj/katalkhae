import 'package:flutter/material.dart';

class Ads extends StatelessWidget {
  //const Ad({ Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          //x 버튼이 생김 : 팝업 다이얼로그에 기본으로 적용되어있음
          //floating : false,
          title: Text(''),
          backgroundColor: Colors.transparent,
          //Palette.headerColor,//Colors.blue,
          elevation: 0,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.close),
              color: Colors.grey,
              onPressed: () => Navigator.of(context).pop(null),
            ),
          ],
          leading: Container(),
        ),
        extendBodyBehindAppBar: true, // body 위에 appbar
        body: SafeArea(
          child: Container(
                  child:const Text(
                    'test',
                    style: TextStyle(
                      letterSpacing: 1.0,
                      fontSize: 26,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
        ),
    );
  }
}