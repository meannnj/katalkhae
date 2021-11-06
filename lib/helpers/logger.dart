import 'package:logger/logger.dart';

/// Project: client
/// User: kimandy
/// Date: 2021/06/18
/// Time: 6:52 오후

var logger = Logger(
    printer: PrettyPrinter(
        methodCount: 5, // number of method calls to be displayed
        errorMethodCount:
        10, // number of method calls if stacktrace is provided
        // lineLength: 120, // width of the output
        colors: true, // Colorful log messages
        printEmojis: true, // Print an emoji for each log message
        printTime: true) // Should each log print contain a timestamp
);
