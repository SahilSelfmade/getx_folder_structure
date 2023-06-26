import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:getx_folder_structure/core/common_widgets/common_connectivity_check.dart';
import 'package:getx_folder_structure/core/core.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    // ! Local Storage
    Get.put(GetStorageController());

    // ! COnnectivity Check
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
  }
}
