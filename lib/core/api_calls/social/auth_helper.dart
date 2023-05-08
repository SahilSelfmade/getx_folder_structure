// // ignore_for_file: unused_local_variable

// import 'dart:convert';

// import 'package:flutter_login_facebook/flutter_login_facebook.dart';
// import 'package:trippinr/auth_controller.dart';
// import 'package:trippinr/core/app_export.dart';
// import 'package:trippinr/core/controllers/user_session_controller.dart';
// import 'package:trippinr/presentation/blogs/controller/blogs_controller.dart';
// import 'package:trippinr/presentation/login/controller/login_controller.dart';

// void printWrapped(String text) {
//   final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
//   pattern.allMatches(text).forEach((match) => print(match.group(0)));
// }

// class AuthHelper extends GetConnect {
//   var _authController = Get.find<AuthController>();
//   var _blogController = Get.find<BlogsController>();
//   var _loginController = Get.find<LoginController>();
//   UserSessionController _userSessionController = Get.find();
// // ! Apple

// //  ! FaceBook
//   /// Handle Facebook SignIn to authenticate user
//   Future<FacebookUser> facebookSignInProcess() async {
//     final facebookLogin = FacebookLogin();
//     final facebookLoginResult = await facebookLogin.logIn(permissions: [
//       FacebookPermission.publicProfile,
//       FacebookPermission.email,
//     ]);
//     print(facebookLoginResult);
//     print("hafdsjl $facebookLoginResult");
//     return fetchUserProfile(facebookLoginResult.accessToken!.token);
//   }

//   /// method to fetch loggedIn user profile
//   Future<FacebookUser> fetchUserProfile(String token) async {
//     final graphResponse = await httpClient.get(
//         'https://graph.facebook.com/v2.12/me?fields=name,first_name,last_name,email&access_token=$token');

//     final profile = json.decode(graphResponse.body);

//     return FacebookUser.fromMap(profile);
//   }

//   /// To signout from the application if the user is signed in through facebook
//   void facebookSignOutProcess() async {
//     final facebookLogin = FacebookLogin();
//     final facebookLoginResult = await facebookLogin.logOut();

//     return facebookLoginResult;
//   }

//   // ! Google Auth
//   /// Handle Google Signin to authenticate user

//   /// To Check if the user is already signedin through google
//   // Future<bool> alreadySignIn() async {
//   //   GoogleSignIn _googleSignIn = GoogleSignIn();
//   //   bool alreadySignIn = await _googleSignIn.isSignedIn();
//   //   return alreadySignIn;
//   // }

//   /// To signout from the application if the user is signed in through google
//   // Future<GoogleSignInAccount?> googleSignOutProcess() async {
//   //   GoogleSignIn _googleSignIn = GoogleSignIn();
//   //   GoogleSignInAccount? googleUser = await _googleSignIn.signOut();
//   //   if (googleUser?.email == null &&
//   //       googleUser?.id == null &&
//   //       googleUser?.displayName == null &&
//   //       googleUser?.serverAuthCode == null &&
//   //       googleUser?.photoUrl == null) {
//   //     Get.toNamed(AppRoutes.bottom_nav_bar);
//   //   }
//   //   return googleUser;
//   // }
// }
