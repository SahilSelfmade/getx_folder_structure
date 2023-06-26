class AppLocalStorageConstants {
  static AppLocalStorageConstants? _instance;
  // Avoid self instance
  AppLocalStorageConstants._();
  static AppLocalStorageConstants get instance {
    _instance ??= AppLocalStorageConstants._();
    return _instance!;
  }

  static const String firstNameString = 'firstNameString';
  static const String emailString = 'emailString';
  static const String currencyListString = 'currencyListString';

  static const String addressListString = 'addressListString';
  static const String lastNameString = 'lastNameString';
  static const String tokenString = 'tokenString';
}
