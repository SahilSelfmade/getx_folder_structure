import 'package:flutter/material.dart';
import 'package:getx_folder_structure/core/utils/size_utils.dart';

class AppBorderRadius {
  static AppBorderRadius? _instance;
  // Avoid self instance
  AppBorderRadius._();
  static AppBorderRadius get instance {
    _instance ??= AppBorderRadius._();
    return _instance!;
  }

  static BorderRadius customBorderTL20 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        20.00,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        20.00,
      ),
    ),
  );

  static BorderRadius circleBorder3 = BorderRadius.circular(
    getHorizontalSize(
      3.00,
    ),
  );

  static BorderRadius customBorderTL30 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        30.00,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        30.00,
      ),
    ),
  );
}
