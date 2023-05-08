import 'package:flutter/material.dart';
import 'package:getx_folder_structure/core/constants/color_constant.dart';
import 'package:getx_folder_structure/core/utils/size_utils.dart';

class AppBoxDecoration {
  static AppBoxDecoration? _instance;
  // Avoid self instance
  AppBoxDecoration._();
  static AppBoxDecoration get instance {
    _instance ??= AppBoxDecoration._();
    return _instance!;
  }

  static BoxDecoration get outlineYellow90033 => BoxDecoration(
        color: ColorConstant.black,
        border: Border.all(
          color: ColorConstant.black,
          width: getHorizontalSize(
            2.00,
          ),
        ),
      );
}
