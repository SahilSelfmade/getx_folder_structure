import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:getx_folder_structure/core/core.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    // ! Local Storage
    Get.put(GetStorageController());

    // ! Connectivity Check
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
  }
}
