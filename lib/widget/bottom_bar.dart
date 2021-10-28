import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
        height: 60,
        child: const TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white60,
          indicatorColor: Colors.transparent,
          tabs: [
            Tab(
              icon: Icon(
                  Icons.format_list_bulleted_sharp,
                  size: 18),
              child: Text(
                '해석하기',
                style: TextStyle(
                    fontSize: 9
                ),
              ),
            ),
            Tab(
              icon: Icon(
                  Icons.messenger_outline_sharp,
                  size: 18),
              child: Text(
               '해석결과',
                style: TextStyle(
                    fontSize: 9
                ),
              ),
            ),
            Tab(
              icon: Icon(
                  Icons.favorite_border_sharp,
                  size: 18),
              child: Text(
                '메모리박스',
                style: TextStyle(
                    fontSize: 9
                ),
              ),
            ),
            Tab(
              icon: Icon(
                  Icons.settings,
                  size: 18),
              child: Text(
                '설정',
                style: TextStyle(
                    fontSize: 9
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
