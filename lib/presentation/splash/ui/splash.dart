import 'package:getx_folder_structure/core/core.dart';

// ignore_for_file: must_be_immutable
class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: ColorConstant.black,
        body: Stack(
          children: [
            Container(
              color: ColorConstant.black,
              width: size.width,
              height: size.height,
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
