import 'package:flutter/material.dart';
import 'package:getx_folder_structure/core/constants/color_constant.dart';

class AppBoxDecoration {
  static AppBoxDecoration? _instance;
  // Avoid self instance
  AppBoxDecoration._();
  static AppBoxDecoration get instance {
    _instance ??= AppBoxDecoration._();
    return _instance!;
  }

  static BoxDecoration get outlineYellow90033 => BoxDecoration(
        color: AppColorConstant.black,
        border: Border.all(
          color: AppColorConstant.black,
          width: 2,
        ),
      );
}
