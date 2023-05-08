class LocalStorageConstants {
  static LocalStorageConstants? _instance;
  // Avoid self instance
  LocalStorageConstants._();
  static LocalStorageConstants get instance {
    _instance ??= LocalStorageConstants._();
    return _instance!;
  }

  static const String firstNameString = 'firstNameString';
  static const String emailString = 'emailString';
  static const String currencyListString = 'currencyListString';
  static const String hotelListString = 'hotelListString';
  static const String addressListString = 'addressListString';
  static const String lastNameString = 'lastNameString';
  static const String tokenString = 'tokenString';
  static const String currencyString = 'currencyString';
}
