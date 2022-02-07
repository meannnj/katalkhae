import 'package:flutter/material.dart';
import 'package:katalkhae/config/palette.dart';

class MyTalk extends StatelessWidget {
  //const MyButton({ Key? key }) : super(key: key);

   const MyTalk(
      {this.title, this.date, this.onPressed});

  final String? title;
  final String? date;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Container(
        padding:
        const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text(
                    title!,
                      //textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.start,
                    children: [
                      Text(
                        '저장한 날짜 : ',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 10,
                        ),
                      ),
                      Text(
                          date!,
                          //textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 10,
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      onPressed: onPressed!,
      style: ElevatedButton.styleFrom(
        //primary: Colors.black,
        minimumSize: const Size(390, 70),
        primary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          //side: BorderSide(color: Colors.red)
        ),
      ),
    );
  }
}
