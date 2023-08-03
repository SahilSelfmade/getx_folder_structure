import 'dart:convert';
import 'dart:developer';

class Logger {
  var logEnabled = true;
  static void print(
    dynamic title,
    dynamic data,
  ) {
    log('\n====================\nLog Start\nTitle: $title\n\nResult: $data\nLog End\n====================\n');
  }

  static void printApiCalls(
    dynamic data,
  ) {
    log('\n=================\nRequest Body:\n\n${const JsonEncoder.withIndent('  ').convert(data)}\n\n=================\n\n');
  }
}
