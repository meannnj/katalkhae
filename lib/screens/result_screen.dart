import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:katalkhae/config/palette.dart';
import 'package:katalkhae/items/my_result.dart';
import 'package:katalkhae/screens/ad_screen.dart';
import 'analyze_katalk_choice.dart';
import 'package:flutter/foundation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

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

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    TargetPlatform os = Theme.of(context).platform;
    //logger.i('os: $os');

    //InterstitialAd
    InterstitialAd interstitialAd = InterstitialAd(
        listener: AdListener(
          onAdClosed: (ad){
            print('Interstial Ad가 종료되었습니다.');
          }
        ),
      adUnitId: InterstitialAd.testAdUnitId,
      //adUnitId: UNIT_ID[os == TargetPlatform.iOS ? 'ios' : 'android']!,
        request: AdRequest(),
    )..load();

    //RewardedAd
    RewardedAd rewardedAd = RewardedAd(
      listener: AdListener(
          onAdClosed: (ad){
            print('rewardedAd Ad가 종료되었습니다.');
          },
        onRewardedAdUserEarnedReward: (ad, item){
          print('rewardedAd Ad가 보상을 획득습니다.');
        }
      ),
      adUnitId: RewardedAd.testAdUnitId,
      //adUnitId: UNIT_ID[os == TargetPlatform.iOS ? 'ios' : 'android']!,
      request: AdRequest(),
    )..load();


    return Scaffold(
      backgroundColor: Palette.backgroundColor, //Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                  child: Text(
                    '결과',
                    style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 2.0,
                      color: Colors.black, //Palette.mainColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    MyResult(
                      image: 'images/item1.png',
                      title: 'InterstitialAd',
                      //title: '지난 1년 우리는 서로를 얼마나 사랑했을까?',
                      type: 'ver. 연인',
                      target: '레오,알리스',
                      date1: '2020.10.01',
                      date2: '2021.10.01',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Ads()),
                        );
                        interstitialAd.show();
                        },
                    ),

                    const SizedBox(
                      height: 15.0,
                    ),

                    MyResult(
                      image: 'images/item1.png',
                      title: 'RewardedAd',
                      //title: '지난 1년 우리는 서로를 얼마나 사랑했을까?',
                      type: 'ver. 연인',
                      target: '레오,알리스',
                      date1: '2020.10.01',
                      date2: '2021.10.01',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Ads()),
                        );
                        rewardedAd.show();
                      },
                    ),

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
