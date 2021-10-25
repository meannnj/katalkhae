import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_linkify/flutter_linkify.dart';
//import 'package:url_launcher/url_launcher.dart';

class MoreScreen extends StatelessWidget {
  //const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top:50),
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('images/glogo.png'),
              ),
            ),
            Container(
                padding: EdgeInsets.only(top:15),
                child: Text(
                  'Leo',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white
                  ),
                )
            ),
            Container(
              padding: EdgeInsets.all(15),
              width: 60,
              height: 5,
              color: Colors.red,
            ),
            // Container(
            //   padding: EdgeInsets.all(10),
            //   child: Linkify(
            //     onOpen: (link) async {
            //       if (await canLaunch(link.url)) {
            //         await launch(link.url);
            //       } else {
            //         throw 'Could not launch $link';
            //       }
            //     },
            //     text: "https://booupking.site",
            //     style: TextStyle(
            //       //color: Colors.white,
            //       fontWeight: FontWeight.bold,
            //       fontSize: 20,
            //     ),
            //     linkStyle: TextStyle(color: Colors.white),
            //   ),
            // ),
            Container(
              padding: EdgeInsets.all(10),
              child: ElevatedButton.icon(
                icon: Icon(
                  Icons.edit,
                  color: Colors.white,
                  // size: 30.0,
                ),
                label: Text('프로필 수정하기'),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  primary: Colors.white,
                  minimumSize: Size(double.maxFinite, 30), //width, height
                  // shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(10.0)),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
