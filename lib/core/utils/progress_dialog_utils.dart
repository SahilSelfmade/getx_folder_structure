import 'package:getx_folder_structure/core/core.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class ProgressDialogUtils {
  static ProgressDialogUtils? _instance;
  // Avoid self instance
  ProgressDialogUtils._();
  static ProgressDialogUtils get instance {
    _instance ??= ProgressDialogUtils._();
    return _instance!;
  }

  static bool isProgressVisible = false;

  //! Common method for showing progress dialog
  static void showProgressDialog({isCancellable = false}) async {
    if (!isProgressVisible) {
      Get.dialog(
        Material(
          color: Colors.transparent,
          child: Container(
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColorConstant.blue.withOpacity(0.2),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LoadingAnimationWidget.staggeredDotsWave(
                    color: Colors.blue, //ColorHelper.btnColor,
                    size: 50,
                  ),
                  // CircularProgressIndicator(backgroundColor: Colors.white,),
                ),
              ],
            ),
          ),
        ),
        barrierDismissible: isCancellable,
      );
      isProgressVisible = true;
    }
  }

  //! common method for hiding progress dialog
  static void hideProgressDialog() {
    if (isProgressVisible) {
      Get.back();
      isProgressVisible = false;
    }
  }
}
