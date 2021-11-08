import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:file_picker_cross/file_picker_cross.dart';
import 'package:flutter/material.dart';
import 'package:katalkhae/helpers/logger.dart';
import 'package:path_provider/path_provider.dart';

class KatalkListButton extends StatelessWidget {
  GlobalKey widgetKey = GlobalKey();
  late FilePickerCross filePickerCross;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
        final _file = result.files.first;
        final _fileName = _file.name;
        final _filePath = _file.path;
        final lastFile = File('$_filePath/$_fileName');
        String string = lastFile.readAsString() as String;
        logger.i('내용 : ',string);

        storage.readFile().then((onValue) { setState(() { message = onValue; }); });

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
