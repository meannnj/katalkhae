import 'package:flutter/material.dart';
import 'package:katalkhae/config/palette.dart';

class ItemA extends StatelessWidget {
  const ItemA({Key? key}) : super(key: key);

  //const ScreenA({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('카톡 해석하기',
        style: TextStyle(fontWeight: FontWeight.bold),
          ),
          elevation: 0.0,
          backgroundColor: Palette.backgroundColor,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top:0, left:20, right:20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 10.0,
              ),
              const Text('해석할 카카오톡 대화를 선택해주세요.',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
              const SizedBox(
                height: 10.0,
              ),
              OutlinedButton(

                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const <Widget> [
                      Text('김민제님과의 카톡 대화',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          )
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text('저장한 날짜: 2021. 10. 01 오후 7:42',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 10,
                          )
                      ),
                    ],
                  ),
                ),
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  //primary: Colors.black,
                  minimumSize: const Size(390,40),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    //side: BorderSide(color: Colors.red)
                  ),
              ),

              )
            ],
          ),
        )
    );
  }
}
