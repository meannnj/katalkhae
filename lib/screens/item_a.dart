import 'package:flutter/material.dart';
import 'package:katalkhae/config/palette.dart';

class ItemA extends StatelessWidget {
  //const ScreenA({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('내가 너보다 더 사랑할까?'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                //color: Colors.red,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('back'),
                style: ElevatedButton.styleFrom(
                  primary: Palette.mainColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              )
            ],
          ),
        )
    );
  }
}
