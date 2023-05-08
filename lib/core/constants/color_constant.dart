import 'package:flutter/material.dart';

class ColorConstant {
  static ColorConstant? _instance;
  // Avoid self instance
  ColorConstant._();
  static ColorConstant get instance {
    _instance ??= ColorConstant._();
    return _instance!;
  }

  static Color black = Colors.black;

  static Color white = Colors.white;

  static Color gray40066 = fromHex('#66c2c1c0');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
