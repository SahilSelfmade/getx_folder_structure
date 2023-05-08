import 'package:getx_folder_structure/core/core.dart';

class SplashController extends GetxController {
  final GetStorageController _userSessionController = Get.find();

  @override
  void onReady() {
    super.onReady();
    splashInit();
  }

  Future<void> splashInit() async {
    await Future.delayed(const Duration(seconds: 4));

    // if (_userSessionController.token == null || _userSessionController.token == "") {
    //   _authController.isLoggedIn(false);
    //   Get.toNamed(AppRoutes.bottom_nav_bar);
    // } else {
    //   print("First Name ${_userSessionController.token}");
    //   _authController.isLoggedIn(true);
    //   _blogController.getBlog(token: _userSessionController.token);

    //   Get.toNamed(AppRoutes.bottom_nav_bar);
    // }
    // });
  }
}
