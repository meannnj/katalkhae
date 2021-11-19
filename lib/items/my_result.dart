import 'package:flutter/material.dart';
import 'package:katalkhae/config/palette.dart';

class MyResult extends StatelessWidget {
  //const MyButton({ Key? key }) : super(key: key);

   const MyResult(
      {this.image, this.title, this.type, this.target, this.date1, this.date2, this.onPressed});

  final String? image;
  final String? title;
  final String? type;
  final String? target;
  final String? date1;
  final String? date2;
  // final DateTime? date1;
  // final DateTime? date2;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed!,
      child: Container(
        padding: const EdgeInsets.only(
            top: 15, bottom: 15, left: 10, right: 10),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 4,
                child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      Text(
                        title!,
                        softWrap: true,
                        //overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          height: 1.3,
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.start,
                        children: [
                          Text(
                            type!,
                            style: TextStyle(
                              letterSpacing: 0,
                              fontSize: 13,
                              color: Palette.disableColor,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            ' ㅣ ',
                            style: TextStyle(
                              letterSpacing: 0,
                              fontSize: 13,
                              color: Palette.disableColor,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            target!,
                            style: TextStyle(
                              letterSpacing: 0,
                              fontSize: 13,
                              color: Palette.disableColor,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.start,
                        children: [
                          Text(
                            date1!,
                            style: TextStyle(
                              letterSpacing: 0,
                              fontSize: 13,
                              color: Palette.disableColor,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            ' ~ ',
                            style: TextStyle(
                              letterSpacing: 0,
                              fontSize: 13,
                              color: Palette.disableColor,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            date2!,
                            style: TextStyle(
                              letterSpacing: 0,
                              fontSize: 13,
                              color: Palette.disableColor,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ]),
              ),

              //const Spacer(flex:1),

              Expanded(
                flex: 1,
                child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                                image!)))),
              ),
            ]),
      ),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(390, 50),
        primary: Colors.white, // background
        //onPrimary: Palette.mainColor, //foreground
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0)),
      ),
    );
  }
}
