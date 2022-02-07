import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:file_picker_cross/file_picker_cross.dart';
import 'package:flutter/material.dart';
import 'package:katalkhae/helpers/API.dart';
import 'package:katalkhae/helpers/logger.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:convert';
import 'date_choice_dialog.dart';
import 'package:http/http.dart' as http;

class KatalkListButton extends StatelessWidget {
  GlobalKey widgetKey = GlobalKey();
  late FilePickerCross filePickerCross;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Container(
        padding:
            const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
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
            ),
          ],
        ),
      ),
      onPressed: () async {
        final fileInfo = await FilePicker.platform.pickFiles();
        if (fileInfo == null) return;
        final _filePath = fileInfo.files.first.path;
        final katalkFile = File('$_filePath');
        final katalkContent = await katalkFile.readAsString();
        logger.i('카카오톡 내용 : ', katalkContent);

        //final response = await http.get(url);

        showDialog<String>(
            context: context,
            builder: (BuildContext context) => CalendarDialog());
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
    );
  }
}
