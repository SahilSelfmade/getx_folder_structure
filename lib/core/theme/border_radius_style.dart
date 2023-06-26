import 'package:flutter/material.dart';

class AppBorderRadius {
  static AppBorderRadius? _instance;
  // Avoid self instance
  AppBorderRadius._();
  static AppBorderRadius get instance {
    _instance ??= AppBorderRadius._();
    return _instance!;
  }

  static BorderRadius customBorderTL20 = const BorderRadius.only(
    topLeft: Radius.circular(
      20,
    ),
    topRight: Radius.circular(
      20,
    ),
  );

  static BorderRadius circleBorder3 = BorderRadius.circular(
    3,
  );

  static BorderRadius customBorderTL30 = const BorderRadius.only(
    topLeft: Radius.circular(
      30,
    ),
    topRight: Radius.circular(
      30,
    ),
  );
}
