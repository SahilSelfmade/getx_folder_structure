import 'package:fluttertoast/fluttertoast.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_folder_structure/core/core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // ! Local Storage Initialization
  await GetStorage.init();
  var localStorage = Get.put(GetStorageController());
  await localStorage.init();
  Logger.init(LogMode.debug);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitialBindings(),
      initialRoute: AppRoutes.splash,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.grey,
      ),
      home: const Text('Flutter Demo Home Page'),
      builder: (context, child) {
        final mediaQueryData = MediaQuery.of(context);
        final scale = mediaQueryData.copyWith(textScaleFactor: 1.0);
        // final scale = mediaQueryData.textScaleFactor.clamp(0.8, 0.9);
        child = FToastBuilder()(context, child);
        child = MediaQuery(
          // data: MediaQuery.of(context).copyWith(textScaleFactor: scale),
          data: scale,
          child: child,
        );
        return child;
      },
    );
  }
}
