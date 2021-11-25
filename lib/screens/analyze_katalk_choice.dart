import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:katalkhae/config/palette.dart';
import 'package:katalkhae/helpers/logger.dart';
import 'package:katalkhae/widget/katalk_list_button.dart';
import 'package:path_provider/path_provider.dart';
import 'package:file_picker/file_picker.dart';
import 'package:katalkhae/widget/date_choice_dialog.dart';
import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'dart:convert';

const Map<String, String> UNIT_ID = kReleaseMode
    ? {
  'ios': '[YOUR iOS AD UNIT ID]',
  'android': 'ca-app-pub-3016785609393816~4692289058',
}
    : {
  'ios': '',
  'android': 'ca-app-pub-3940256099942544/6300978111'
  //광고 샘플 https://developers.google.com/admob/android/test-ads?hl=ko
  //실제 'ca-app-pub-3016785609393816/8056818992',
};
import 'dart:convert';

class KatalkChoice extends StatelessWidget {
  const KatalkChoice({Key? key}) : super(key: key);

  String get currentDate => DateFormat('yyyy-MM-dd').format(DateTime.now());

  String get beforeOneYearDate =>
      DateFormat('yyyy-MM-dd')
          .format(DateTime.now().subtract(Duration(days: 365)));

  //const ScreenA({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //광고
    TargetPlatform os = Theme.of(context).platform;

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
            '카톡 해석하기',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          elevation: 0.0,
          backgroundColor: Palette.backgroundColor,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
          child: Column(
            children: [
              Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text('해석할 카카오톡 대화를 선택해주세요.',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            KatalkListButton(),
                            SizedBox(
                              height: 15.0,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
              //광
              Container(
                height: 50,
                child: banner == null
                    ?  Container(
                  child:const Text(
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
        ]
          ),
        ));
  }
}
