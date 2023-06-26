// import 'package:get/get_state_manager/src/simple/get_controllers.dart';
// import 'package:getx_folder_structure/core/core.dart';

// class LoginController extends GetxController {
//   // ! Social Login
// // * Google Login
//   Future<GoogleSignInAccount?> googleSignInProcess() async {
//     await checkLocationPermission();

//     Get.dialog(const Loader(), barrierDismissible: false);

//     final GoogleSignIn googleSignIn;
//     // Get.back();

//     if (Platform.isAndroid) {
//       googleSignIn = GoogleSignIn();
//     } else {
//       googleSignIn = GoogleSignIn(clientId: '727941045826-dcvuf9usj1na8qnrp7idqn8nu0jaul49.apps.googleusercontent.com');
//     }
//     update();

//     // GoogleSignIn _googleSignIn = GoogleSignIn();
//     GoogleSignInAccount? googleUser = await googleSignIn.signIn().then((value) async {
//       // log("Google ID ${value!.id}");

//       if (value != null) {
//         // log("googleSignInProcess $value");
//         SharedPref.setEmail(value.email);
//         var names = value.displayName!.split(' ');

//         update();
//         Get.back();
//         var body = {
//           'email': value.email,
//           'first_name': names[0].toString(),
//           'last_name': names[1].toString(),
//           'social_id': value.id,
//           'image': value.photoUrl ?? '',
//         };
//         Logger.log(body.toString());
//         await ApiClient().callPostApi(ApiUrl.socialLoginApi, body).then((apiValue) async {
//           // log("googleSignInProcess callPostApi $apiValue");
//           // log("googleSignInProcess callPostApi ${apiValue['data']['access_token']}");
//           // await SharedPref.setAuthToken(apiValue['data']['access_token']);
//           // await SharedPref.setSocialLogin("true");
//           // await SharedPref.setUpdatedImage(apiValue['data']['image'] ?? "");
//           // await SharedPref.setFirstName(apiValue['data']['first_name'] ?? "");
//           // await SharedPref.setLastName(apiValue['data']['last_name'] ?? "");
//           // await Get.toNamed(AppRoutes.bottom_nav_Screen);
//           Logger.log('googleSignInProcess callPostApi Google Login Successfully');
//         });

//         return;
//       } else {
//         Get.back();
//         return null;
//       }
//     });

//     log('object1');

//     update();

//     return googleUser;
//   }

// // * Apple Login
//   Future<void> signInWithApple() async {
//     Get.dialog(const Loader(), barrierDismissible: false);

//     await checkLocationPermission();

//     log('signInWithApple');

//     update();
//     Get.back();

//     try {
//       await SignInWithApple.getAppleIDCredential(
//         scopes: [
//           AppleIDAuthorizationScopes.email,
//           AppleIDAuthorizationScopes.fullName,
//         ],
//       ).then((value) async {
//         // if (value.userIdentifier!.isNotEmpty) {
//         final token = value.identityToken;
//         final encodedPayload = token!.split('.')[1];
//         final payloadData = const Utf8Codec().fuse(base64).decode(base64.normalize(encodedPayload));
//         log(payloadData.toString());
//         if (value != '') {
//           log('signInWithApple ');
//           // log("signInWithApple User Identifier ${value.userIdentifier}");
//           log('signInWithApple NAME ${value.familyName}');
//           // log("signInWithApple EMAIL ${value.email}");

//           ApiClient().callPostApi(ApiUrl.socialLoginApi, {
//             // "email": value.email ?? "",
//             'social_id': value.userIdentifier,
//             'first_name': value.givenName?.toString() ?? '',
//             'last_name': value.familyName?.toString() ?? '',
//           }).then((value) async {
//             if (value != null) {
//               log('signInWithApple Apple Login Successfully');
//               // print("signInWithApple ${value['token']}");

//               // SharedPref.setAuthToken(value['token']);

//               await SharedPref.setSocialLogin('true');
//               await SharedPref.setEmail(value['data']['email']);

//               // Get.defaultDialog(title: "Token", middleText: "Token Code ${value['data']['access_token']}");
//               await SharedPref.setAuthToken(value['data']['access_token']);
//               await SharedPref.setUpdatedImage(value['data']['image'] ?? '');
//               await SharedPref.setFirstName(value['data']['first_name'] ?? '');
//               await SharedPref.setLastName(value['data']['last_name'] ?? '');
//               Get.back();

//               Get.toNamed(AppRoutes.bottom_nav_Screen);

//               update();
//             }
//           });

//           update();
//           // Navigator.pop(context);
//           log('signInWithApple value_apple_null1');
//         } else {
//           Get.back();

//           update();
//           log('signInWithApple value_apple_null');
//           log(value.toString());
//         }

//         update();
//       });

//       // Use the credential to sign in to your backend server
//       // ...
//     } catch (error) {
//       // Get.snackbar(
//       //   'Error',
//       //   'Failed to sign in with Apple: $error',
//       //   backgroundColor: Colors.red,
//       //   colorText: Colors.white,
//       //   snackPosition: SnackPosition.BOTTOM,
//       // );
//     }
//   }
// }
