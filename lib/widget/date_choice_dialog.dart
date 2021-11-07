import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:katalkhae/helpers/logger.dart';

class CalendarDialog extends StatefulWidget {
  @override
  _CalendarDialogState createState() => _CalendarDialogState();
}

class _CalendarDialogState extends State<CalendarDialog> {
  String get currentDate => DateFormat('yyyy-MM-dd').format(DateTime.now());

  String get beforeOneYearDate => DateFormat('yyyy-MM-dd')
      .format(DateTime.now().subtract(Duration(days: 365)));

  DateTimeRange dateRange = DateTimeRange(
      start: DateTime.now().subtract(Duration(days: 365)), end: DateTime.now());

  String getFrom() {
    if (dateRange == null) {
      return '언제부터';
    } else {
      return DateFormat('MM/dd/yyyy').format(dateRange.start);
    }
  }

  String getUntil() {
    if (dateRange == null) {
      return '언제까지';
    } else {
      return DateFormat('MM/dd/yyyy').format(dateRange.end);
    }
  }

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: ElevatedButton(
                      onPressed: () => pickDateRange(context),
                      child: Text(getFrom()))),
              const SizedBox(
                width: 10,
              ),
              Text('~'),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child: ElevatedButton(
                      onPressed: () => pickDateRange(context),
                      child: Text(getUntil()))),
            ],
          )
        ],
      ),
      actions: <Widget>[
        ElevatedButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text(
              '대화 해석을 시작할게요',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            style: ElevatedButton.styleFrom(primary: Colors.deepPurple)),
      ],
    );
  }

  Future pickDateRange(BuildContext context) async {
    // 날짜범위 초기화
    final initialDateRange = DateTimeRange(
      start: DateTime.now(),
      end: DateTime.now().add(Duration(hours: 24 * 3)),
    );

    // 선택한 날짜 범위ㅑ
    final newDateRange = await showDateRangePicker(
        context: context,
        firstDate: DateTime(DateTime.now().year - 5),
        lastDate: DateTime(DateTime.now().year + 5),
        initialDateRange: initialDateRange);

    // 선택한 날짜가 없으면 return
    if (newDateRange == null) return;

    // 선택한 날짜가 있으면 dateRange를 선택한 날짜로..
    setState(() => dateRange = newDateRange);
  }
}
