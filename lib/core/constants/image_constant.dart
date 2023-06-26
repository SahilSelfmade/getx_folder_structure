class ImageConstant {
  static ImageConstant? _instance;
  // Avoid self instance
  ImageConstant._();
  static ImageConstant get instance {
    _instance ??= ImageConstant._();
    return _instance!;
  }

  static String imgRectangle2391676x170 = 'assets/images/img_rectangle23916_76x170.png';
}
