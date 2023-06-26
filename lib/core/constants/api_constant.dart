class AppApiConstant {
  static AppApiConstant? _instance;
  // Avoid self instance
  AppApiConstant._();
  static AppApiConstant get instance {
    _instance ??= AppApiConstant._();
    return _instance!;
  }

  //! Base Url
  // **********  Live
  static const liveBaseUrl = 'http://13.210.226.243/api/';
  // **********  Local
  // static const liveBaseUrl = 'http://192.168.1.30:8000/api/';  // ! LOCAL

  // ! Authentication Endpoints
  static const loginEndPoint = '${liveBaseUrl}login';
  static const signupEndPoint = '${liveBaseUrl}signup';
  static const forgotPasswordEndPoint = '${liveBaseUrl}forgot-password';
  static const sendOTPEndPoint = '${liveBaseUrl}send-otp';
  static const verifyOTPEndPoint = '${liveBaseUrl}verify-otp';
}
