import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:getx_folder_structure/core/core.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(GetStorageController());
    Get.put(ApiClient());
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
  }
}
