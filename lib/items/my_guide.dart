import 'package:flutter/material.dart';
import 'package:katalkhae/config/palette.dart';

class MyGuide extends StatelessWidget {
  //const MyButton({ Key? key }) : super(key: key);

  const MyGuide(
      {this.title, this.image});

  final String? title;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(title!,
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only( left: 60, right: 60),
            child: FittedBox(
              child: Image.asset(image!),
              fit: BoxFit.fill,
            ),
          ),

          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
