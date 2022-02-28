import 'package:flutter/material.dart';
import 'package:katalkhae/config/palette.dart';

class MyVilResult extends StatelessWidget {
  //const MyButton({ Key? key }) : super(key: key);

  const MyVilResult(
      {
      this.rank,
      this.image,
      this.name,
      this.type,
      this.score,
      this.onPressed});

  final String? rank;
  final String? image;
  final String? name;
  final String? type;
  final String? score;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
      const EdgeInsets.only(top: 15, bottom: 15, left: 10, right: 10),
      child:
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Expanded(
          flex: 1,
          child: Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,children: [
              Text(
                rank!,
                softWrap: true,
                //overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  height: 1.3,
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage('images/item1.png')))),
        ),

        Expanded(
          flex: 4,
          child: Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,children: [
              Text(
                name!,
                softWrap: true,
                //overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  height: 1.3,
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]
            ),
          ),
        ),

        Expanded(
          flex: 4,
          child: Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,children: [
              Text(
                type!,
                softWrap: true,
                //overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  height: 1.3,
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]
            ),
          ),
        ),
        //const Spacer(flex:1),

        Expanded(
          flex: 2,
          child: Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,children: [
              Text(
                score!,
                softWrap: true,
                //overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  height: 1.3,
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]
            ),
          ),
        ),
      ]),
    );
  }
}
