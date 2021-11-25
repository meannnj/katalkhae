import 'package:flutter/material.dart';
import 'package:katalkhae/config/palette.dart';

class MyItem extends StatelessWidget {
  //const MyButton({ Key? key }) : super(key: key);

  const MyItem(
      {this.image, this.title, this.type, this.text, this.buttonLabel, this.color, this.onPressed});

  final String? image;
  final String? title;
  final String? type;
  final String? text;
  final String? buttonLabel;
  final Color? color;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: const Size(390, 50),
        primary: Colors.white, // background
        //onPrimary: Palette.mainColor, //foreground
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0)),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            ),
            child: Image.asset(
              image!,
              fit: BoxFit.fitWidth,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(top:5,bottom:5, left:15,right:15),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title!,
                    style: TextStyle(
                      height: 1.3,
                      letterSpacing: 0,
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    type!,
                    style: TextStyle(
                      letterSpacing: 0,
                      fontSize: 15,
                      color: Palette.disableColor,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    text!,
                    style: TextStyle(
                      height: 1.5,
                      letterSpacing: 0,
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  TextButton(
                      onPressed: onPressed!,
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        minimumSize: const Size(390, 40),
                        backgroundColor: Palette.mainColor,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(50.0),
                          //side: BorderSide(color: Colors.red)
                        ),
                      ),
                      child: Text(buttonLabel!,style: TextStyle(fontSize: 15))),
                  const SizedBox(
                    height: 15,
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
