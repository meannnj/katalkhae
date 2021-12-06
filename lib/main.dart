//파이어베이스 연동시
//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:katalkhae/screens/main_screen.dart';
import 'package:katalkhae/config/palette.dart';
import 'package:katalkhae/screens/memory_screen.dart';
import 'package:katalkhae/screens/more_screen.dart';
import 'package:katalkhae/screens/result_screen.dart';
import 'package:katalkhae/widget/bottom_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
//오프닝광고
//import 'package:native_admob_flutter/native_admob_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  //await MobileAds.initialize();

  //오프닝광고
  // final AppOpenAd appOpenAd = AppOpenAd();
  // if(!appOpenAd.isAvailable)
  //   await appOpenAd.load(unitId:'ca-app-pub-3940256099942544/3419835294');
  // if(appOpenAd.isAvailable)
  //   await appOpenAd.show();

  runApp(MyApp());
}
//void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Katalkhae',
      debugShowCheckedModeBanner: false, // debug 없애기
      theme: ThemeData(
        //fontFamily: 'Noto_Sans_KR',
        // 'Nanum_Gothic',
        primarySwatch: Palette.headerColor, //Colors.blue
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            //physics: NeverScrollableScrollPhysics(),//손으로 좌우 스크롤하는걸 막는다
            children: [
              MainScreen(),
              ResultScreen(),
              MemoryScreen(),
              MoreScreen(),
            ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}
