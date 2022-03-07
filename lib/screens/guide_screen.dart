import 'package:flutter/material.dart';
import 'package:katalkhae/config/palette.dart';
import 'package:katalkhae/items/my_guide.dart';

class GuideScreen extends StatelessWidget {
  const GuideScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            '카톡 대화 추가하기',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: false,
          elevation: 0.0,
          backgroundColor: Palette.backgroundColor,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_rounded),
            //color: Colors.grey,
            onPressed: () => Navigator.of(context).pop(null),
          ),
        ),
        //extendBodyBehindAppBar: true, // body 위에 appbar
        body: Container(
          //padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
          child: Column(children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10.0,
                      ),
                      MyGuide(
                        title:'1.분석할 채팅방 우측 상단의 [메뉴]를 터치하세요.' ,
                        image: 'images/g1.png'
                      ),
                      MyGuide(
                          title:'2.메뉴 우측 하단의 [설정]를 터치하세요.' ,
                          image: 'images/g2.png'
                      ),
                      MyGuide(
                          title:'3.채팅방 설정에서 [대화 내용 내보내기]를 터치하세요.' ,
                          image: 'images/g3.png'
                      ),
                      MyGuide(
                          title:'4.[모든 메시지 내부저장소에 저장]을 터치한 후 톡방 빌런찾기 앱으로 돌오시면 됩니다.' ,
                          image: 'images/g4.png'
                      ),

                    ],
                  ),
                ),
              ),
            ),

            //하단 고정 버튼
            SizedBox(
                height: 60,
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    '카톡 열기',
                    style: TextStyle(
                      //letterSpacing: 1.0,
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    //minimumSize: const Size(390, 0),
                    primary: Palette.mainColor, // background
                    // //onPrimary: Palette.mainColor, //foreground
                    shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
                  ),

                )
            ),

          ]),
        ));
  }
}
