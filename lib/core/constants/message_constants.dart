class MessageConstants {
  static MessageConstants? _instance;
  // Avoid self instance
  MessageConstants._();
  static MessageConstants get instance {
    _instance ??= MessageConstants._();
    return _instance!;
  }

  static const errorMessage = "Error Message";
}
