import 'package:getx_folder_structure/core/core.dart';
import 'package:getx_folder_structure/presentation/splash/controller/splash_screen_controller.dart';

class SplashScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashScreenController());
  }
}
