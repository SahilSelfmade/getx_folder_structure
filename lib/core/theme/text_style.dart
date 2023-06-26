import 'package:flutter/material.dart';
import 'package:getx_folder_structure/core/constants/color_constant.dart';

class AppTextStyle {
  static AppTextStyle? _instance;
  // Avoid self instance
  AppTextStyle._();
  static AppTextStyle get instance {
    _instance ??= AppTextStyle._();
    return _instance!;
  }

// ! All font size 12
  static TextStyle txt12Poppins500Black = TextStyle(
    color: AppColorConstant.black,
    fontSize: 12,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
  );

// ! All font size 16
// * Color black
  static TextStyle txt16Poppins500Black = TextStyle(
    color: AppColorConstant.black,
    fontSize: 16,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
  );

  //*  Color White
  static TextStyle txt16Poppins500White = TextStyle(
    color: AppColorConstant.black,
    fontSize: 16,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
  );

// ! All font size 14
// * Color Black
  TextStyle txt14Poppins400Black = TextStyle(
    color: AppColorConstant.black,
    fontSize: 14,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
  );

// ! All font size 18
}
