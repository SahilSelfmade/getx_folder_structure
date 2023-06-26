import 'package:getx_folder_structure/core/core.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: AppColorConstant.black,
        body: Stack(
          children: [
            Container(
              color: AppColorConstant.black,
              width: Get.width,
              height: Get.height,
            ),
            // Center(
            //   child: AppbarImage(
            //     height: getVerticalSize(
            //       52.00,
            //     ),
            //     width: getHorizontalSize(
            //       169.00,
            //     ),
            //     svgPath: ImageConstant.imgGroupOrange400,
            //     margin: getMargin(
            //       left: 8,
            //     ),
            //     color: ColorConstant.black,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
