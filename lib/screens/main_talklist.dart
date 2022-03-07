import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:katalkhae/config/palette.dart';
import 'package:katalkhae/items/my_talk.dart';
import 'package:katalkhae/screens/ad_screen.dart';
import 'package:katalkhae/helpers/logger.dart';
import 'package:katalkhae/screens/result_vil.dart';
import 'package:katalkhae/widget/date_choice_dialog.dart';
import 'package:katalkhae/widget/katalk_list_button.dart';
import 'package:flutter/foundation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:file_picker_cross/file_picker_cross.dart';
import 'package:katalkhae/helpers/API.dart';
import 'package:katalkhae/helpers/logger.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:convert';
//import 'date_choice_dialog.dart';
import 'package:http/http.dart' as http;

import 'guide_screen.dart';

const Map<String, String> UNIT_ID = kReleaseMode
    ? {
        'ios': '[YOUR iOS AD UNIT ID]',
        'android': 'ca-app-pub-3016785609393816~4692289058',
      }
    : {
        'ios': '',
        'android': 'ca-app-pub-3940256099942544/6300978111'
        //광고 샘플 https://developers.google.com/admob/android/test-ads?hl=ko
        //샘플 'ca-app-pub-3940256099942544/6300978111'
        //실제 'ca-app-pub-3016785609393816/8056818992',
      };

class TalklistScreen extends StatelessWidget {
  const TalklistScreen({Key? key}) : super(key: key);

  String get currentDate => DateFormat('yyyy-MM-dd').format(DateTime.now());

  String get beforeOneYearDate => DateFormat('yyyy-MM-dd')
      .format(DateTime.now().subtract(Duration(days: 365)));

  @override
  Widget build(BuildContext context) {
    //광고
    TargetPlatform os = Theme.of(context).platform;

    //logger.i('os: $os');

    BannerAd banner = BannerAd(
      listener: AdListener(
        onAdFailedToLoad: (Ad ad, LoadAdError error) {},
        onAdLoaded: (_) {},
      ),
      size: AdSize.banner,
      adUnitId: UNIT_ID[os == TargetPlatform.iOS ? 'ios' : 'android']!,
      request: AdRequest(),
    )..load();

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            '빌런을 찾을 톡방을 선택하세요!',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          elevation: 0.0,

          backgroundColor: Palette.backgroundColor,
        ),

        body: Padding(
          padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
          child: Column(children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // const SizedBox(
                    //   height: 10.0,
                    // ),
                    // const Text('해석할 카카오톡 대화를 선택해주세요.',
                    //     style: TextStyle(
                    //       color: Colors.black87,
                    //       fontSize: 20,
                    //       fontWeight: FontWeight.bold,
                    //     )),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            KatalkListButton(),

                            const SizedBox(
                              height: 15.0,
                            ),

                            MyTalk(
                              title: '김민제님과의 카톡 대화',
                              date: '2021. 10. 01 오후 7:42',
                              onPressed: () async {
                                // final fileInfo = await FilePicker.platform.pickFiles();
                                // if (fileInfo == null) return;
                                // final _filePath = fileInfo.files.first.path;
                                // final katalkFile = File('$_filePath');
                                // final katalkContent = await katalkFile.readAsString();
                                // logger.i('카카오톡 내용 : ', katalkContent);

                                //final response = await http.get(url);

                                showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) => CalendarDialog());
                              },
                            ),

                            const SizedBox(
                              height: 15.0,
                            ),
                            MyTalk(
                              title: '한소희님, 송지아님 외 3명 카톡 대화',
                              date: '2021.10.01 오후 8:42',
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ResultVilScreen()),
                                );
                              },
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            ElevatedButton(
                              child: Container(
                                padding: const EdgeInsets.only(
                                    top: 10, bottom: 10, left: 10, right: 10),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: const [
                                          Text('카톡 대화 추가하기',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              )),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              onPressed: ()
                                 {
                            Navigator.push(
                            context,
                            MaterialPageRoute(
                            builder: (context) => GuideScreen()),
                            );
                            },
                              style: ElevatedButton.styleFrom(
                                //primary: Colors.black,
                                minimumSize: const Size(390, 70),
                                primary: Palette.talkColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  //side: BorderSide(color: Colors.red)
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            //광고
            Container(
              height: 50,
              child: banner == null
                  ? Container(
                      child: const Text(
                        'bad',
                        style: TextStyle(
                          letterSpacing: 1.0,
                          fontSize: 26,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  : AdWidget(
                      ad: banner,
                    ),
            )
          ]),
        ));
  }
}
