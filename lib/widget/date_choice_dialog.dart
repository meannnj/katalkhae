import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:katalkhae/helpers/logger.dart';

class CalendarDialog extends StatefulWidget {
  @override
  _CalendarDialogState createState() => _CalendarDialogState();
}

class _CalendarDialogState extends State<CalendarDialog>{

  String get currentDate => DateFormat('yyyy-MM-dd').format(DateTime.now());
  String get beforeOneYearDate => DateFormat('yyyy-MM-dd')
      .format(DateTime.now().subtract(Duration(days: 365)));

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: Column(
          children: [
            Text(
              '김민제님과의 카카오톡 대화',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 45,
            ),
            Text(
              '기간을 선택해주세요',
              style: TextStyle(fontSize: 14),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment
                  .center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    logger.i(
                        'currentDate: ' + currentDate,
                        'beforeOneYearDate: ' +
                            beforeOneYearDate);
                    Future<DateTime?> future =
                    showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(
                            DateTime
                                .now()
                                .subtract(Duration(
                                days: 365))
                                .year),
                        lastDate: DateTime(2030));
                  },
                  child: Text(
                    beforeOneYearDate,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(
                          fontSize: 15,
                          color: Colors.blue)),
                ),
                Text(
                  '-',
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Future<DateTime?> future =
                    showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2020),
                        lastDate: DateTime(2030));
                  },
                  child: Text(
                    currentDate,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(
                          fontSize: 15,
                          color: Colors.blue)),
                ),
              ],
            )
          ],
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () =>
                Navigator.of(context).pop(),
            child: const Text('OK',
              style: TextStyle(
                  color: Colors.purpleAccent
              ),),
          ),
        ],
      );
  }
}