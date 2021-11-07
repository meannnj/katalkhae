import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:katalkhae/config/palette.dart';
import 'package:katalkhae/helpers/logger.dart';
import 'package:path_provider/path_provider.dart';
import 'package:file_picker/file_picker.dart';
import 'package:katalkhae/widget/date_choice_dialog.dart';
import 'dart:async';
import 'dart:developer';
import 'dart:io';

class KatalkChoice extends StatelessWidget {
  const KatalkChoice({Key? key}) : super(key: key);

  String get currentDate => DateFormat('yyyy-MM-dd').format(DateTime.now());

  String get beforeOneYearDate =>
      DateFormat('yyyy-MM-dd')
          .format(DateTime.now().subtract(Duration(days: 365)));

  //const ScreenA({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      ElevatedButton(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text('김민제님과의 카톡 대화',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                )),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text('저장한 날짜: 2021. 10. 01 오후 7:42',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 10,
                                )),
                          ],
                        ),
                        onPressed: () async {
                          final result = await FilePicker.platform.pickFiles();
                          if (result == null) return;
                          final file = result.files.first;
                        },
                        style: ElevatedButton.styleFrom(
                          //primary: Colors.black,
                          minimumSize: const Size(390, 70),
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            //side: BorderSide(color: Colors.red)
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      ElevatedButton(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text('임시 분석시작 버튼',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                        onPressed: () {
                          showDialog<String>(
                            context: context,
                            builder: (BuildContext context) =>
                                 CalendarDialog()
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          //primary: Colors.black,
                          minimumSize: const Size(390, 70),
                          primary: Colors.deepPurpleAccent,
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
        ));
  }
}
