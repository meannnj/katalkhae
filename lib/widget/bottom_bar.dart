import 'package:flutter/material.dart';
import 'package:katalkhae/config/palette.dart';

class Bottom extends StatelessWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        height: 60,
        child: const TabBar(
          labelColor: Palette.mainColor,
          unselectedLabelColor: Palette.disableColor,
          indicatorColor: Colors.transparent,
          tabs: [
            Tab(
              icon: Icon(
                  Icons.format_list_bulleted_sharp,
                  size: 18),
              child: Text(
                '카톡',
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
                '결과',
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
                '메모리',
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
