import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CustomToast {
  static showToast(
      {required String mesage, Color? bg_color, Color? txt_color}) {
    return Fluttertoast.showToast(
        msg: mesage,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: bg_color ?? Colors.black,
        textColor: txt_color ?? Colors.white,
        fontSize: 16.0);
  }
}
