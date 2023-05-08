import 'package:permission_handler/permission_handler.dart';

class PermissionManager {
  static PermissionManager? _instance;
  // Avoid self instance
  PermissionManager._();
  static PermissionManager get instance {
    _instance ??= PermissionManager._();
    return _instance!;
  }

  ///method returns bool and can be used for checking either
  ///particular permission is granted or not
  static Future<bool> isPermissionGranted(Permission permission) async {
    return !(await permission.status.isDenied || await permission.status.isRestricted);
  }

  ///A common method used for asking permissions
  static Future<void> askForPermission(Permission permission) async {
    if (!await isPermissionGranted(permission)) {
      await permission.request();
    }
  }
}
