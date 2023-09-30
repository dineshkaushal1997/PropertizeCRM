import 'package:get_storage/get_storage.dart';

class PreferencesUtils {
  static GetStorage getStorage = GetStorage();
  static String isOnBoarding = 'IS_ON_BOARDING';
  static String fcmToken = 'FCM_TOKEN';
  static String user = 'USER';

  /// ================================== BOOL ================================== ///
  static Future<void> setBool({required String key, required bool value}) async {
    await getStorage.write(key, value);
  }

  static  bool getBool(String key) {
    return getStorage.read(key) ?? false;
  }

  /// ================================== INT ================================== ///
  static Future<void> setInt({required String key, required int value}) async {
    await getStorage.write(key, value);
  }

  static int getInt(String key) {
    return getStorage.read(key) ?? -1;
  }

  /// ================================== STRING ================================== ///
  static Future<void> setString({required String key, required String value}) async {
    await getStorage.write(key, value);
  }

  static  String getString(String key) {
    return getStorage.read(key) ?? "";
  }
}
