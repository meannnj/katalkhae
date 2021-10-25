import 'package:flutter/material.dart';

class ItemB extends StatelessWidget {
  //const ScreenA({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ItemB'),
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
                  primary: Colors.orangeAccent,
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
