class AppMessageConstants {
  static AppMessageConstants? _instance;
  // Avoid self instance
  AppMessageConstants._();
  static AppMessageConstants get instance {
    _instance ??= AppMessageConstants._();
    return _instance!;
  }

// ! Errors
  static const networkErrorMessage = 'msg_network_err';
  static const somethingWentWrong = 'msg_something_went_wrong';

  // ! Validations
  static const passwordValidationMessage = 'msg_password_validation';

  // ! PopUps
}
