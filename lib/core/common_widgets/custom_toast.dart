import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CustomToast {
  static showToast(
    final String mesage, {
    final Color? bgColor,
    final Color? textColor,
  }) {
    return Fluttertoast.showToast(
      msg: mesage,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      backgroundColor: bgColor ?? Colors.black,
      textColor: textColor ?? Colors.white,
      fontSize: 16.0,
    );
  }
}
