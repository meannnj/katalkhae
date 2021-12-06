import 'package:flutter/material.dart';
import 'package:katalkhae/config/palette.dart';

class MyMemory extends StatelessWidget {
  //const MyButton({ Key? key }) : super(key: key);

  const MyMemory(
      {this.text, this.target, this.date, this.onPressed});

  final String? text;
  final String? target;
  final String? date;
  // final DateTime? date1;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
            //onPressed: onPressed!,
          style: TextButton.styleFrom(
            primary: Colors.black,
            minimumSize: const Size(390, 40),
            backgroundColor: Palette.talkColor,
            shape: RoundedRectangleBorder(
              borderRadius:
              BorderRadius.circular(15),
              //side: BorderSide(color: Colors.red)
            ),
          ),
          child: Flexible(
            child: Container(
                padding: const EdgeInsets.only(
                    left: 5, right: 5),
                alignment: Alignment(-1, 0),
                child: Text(
                    text!)),
          )),
      const SizedBox(
        height: 5,
      ),
      Container(
        padding: EdgeInsets.only(left: 10),
        child: Row(
          mainAxisAlignment:
          MainAxisAlignment.start,
          children: [
            Text(
              target!,
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
              date!,
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

        const SizedBox(
          height: 15,
        ),
      ]
    );
  }
}
