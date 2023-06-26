import 'package:flutter/material.dart';

class AppColorConstant {
  static AppColorConstant? _instance;
  // Avoid self instance
  AppColorConstant._();
  static AppColorConstant get instance {
    _instance ??= AppColorConstant._();
    return _instance!;
  }

  static Color black = Colors.black;

  static Color white = Colors.white;

  static Color blue = Colors.blue;

  static Color gray40066 = fromHex('#66c2c1c0');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
