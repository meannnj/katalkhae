import 'package:flutter/material.dart';
import 'package:katalkhae/config/palette.dart';
import 'package:path_provider/path_provider.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:async';
import 'dart:developer';
import 'dart:io';

class ItemA extends StatelessWidget {
  const ItemA({Key? key}) : super(key: key);

  //const ScreenA({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('카톡 해석하기',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          elevation: 0.0,
          backgroundColor: Palette.backgroundColor,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top:0, left:20, right:20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                  '해석할 카카오톡 대화를 선택해주세요.',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget> [
                        Text('김민제님과의 카톡 대화',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            )
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text('저장한 날짜: 2021. 10. 01 오후 7:42',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 10,
                            )
                        ),
                      ],
                    ),

                    onPressed: () async {
                      log('체크_1');

                      final result = await FilePicker.platform.pickFiles();
                      if(result == null) return;

                      final file = result.files.first;
                      //1111
                      //openFile(file);


                      //var result = await _requestPermission();
                      //log('result, $result');
                      //var dir = await getApplicationDocumentsDirectory();
                      //var file = await File('/storage/emulated/0/KakaoTalk/Chats/KakaoTalk_Chats_2021-11-01_20.43.20_-1107574475/KakaoTalkChats.txt').readAsString();
                      log('체크_2');
                    },

                    // onPressed: () {
                    //   showDialog<String>(
                    //     context: context,
                    //     builder: (BuildContext context) => AlertDialog(
                    //       title: const Text('AlertDialog'),
                    //       content: const Text('완료 상태를 바꾸시겠습니까?'),
                    //       actions: <Widget>[
                    //         TextButton(
                    //           onPressed: () => Navigator.of(context).pop(),
                    //           child: const Text('No'),
                    //         ),
                    //         TextButton(
                    //           onPressed: () {
                    //             Navigator.of(context).pop();
                    //           },
                    //           child: const Text('Yes'),
                    //         ),
                    //       ],
                    //     ),
                    //   );
                    // },
                    style: ElevatedButton.styleFrom(
                      //primary: Colors.black,
                      minimumSize: const Size(390,70),
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        //side: BorderSide(color: Colors.red)
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
//22222
//void openFile

/*Future<bool> checkIfPermissionGranted() async{
    Map<Permission, PermissionStatus> statuses = await [
      Permission.storage,
      Permission.camera
    ].request();

    bool permitted = true;

    statuses.forEach((permission, permissionStatus) {
      if(!permissionStatus.isGranted) {
        permitted = false;
      }
    });

    return permitted;
  }*/
}

/*//화일에 내용을 쓴다.
void writeCountFile(int count) async {
  var dir = await getApplicationDocumentsDirectory();
  File(dir.path + '/count.txt').writeAsStringSync(count.toString());
}

//화일을 읽어온다.
void readCountFile() async {
  //읽어올 파일을 지정한다.
  try {
    var dir = await getApplicationDocumentsDirectory();
    var file = await File(dir.path + '/count.txt').readAsString();
    print(file);
  } catch (e) {
    print(e.toString());
  }
}

Future<String> callPermissions() async {
  Map<Permission, PermissionStatus> statuses = await [
    Permission.location,
    Permission.storage,
  ].request();

  if (statuses.values.every((element) => element.isGranted)) {
    return 'success';
  }

  return 'failed';
}*/

/*
if(await checkIfPermissionGranted()){
SnackBar snackBar = SnackBar(content: Text('전부허용'));
_key.currentState!.showSnackBar(snackBar);
log('허용됨');
}
else{
SnackBar snackBar = SnackBar(
content: Text('전부허용안됨'),
action: SnackBarAction(
label: "go to settings",
onPressed: () {
_key.currentState!.hideCurrentSnackBar();
AppSettings.openAppSettings();
},
));
_key.currentState!.showSnackBar(snackBar);
log('허용안됨');
}*/
