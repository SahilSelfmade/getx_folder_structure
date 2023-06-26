import 'package:getx_folder_structure/core/core.dart';
import 'package:getx_folder_structure/presentation/splash/bindings/splash_screen_binding.dart';
import 'package:getx_folder_structure/presentation/splash/ui/splash_screen.dart';

class AppRoutes {
  static AppRoutes? _instance;
  // Avoid self instance
  AppRoutes._();
  static AppRoutes get instance {
    _instance ??= AppRoutes._();
    return _instance!;
  }

// ! Routes Name
  static const String splash = '/splash';

  static List<GetPage> getPages = [
    GetPage(
      name: splash,
      page: () => const SplashScreen(),
      binding: SplashScreenBinding(),
    ),
  ];
}
