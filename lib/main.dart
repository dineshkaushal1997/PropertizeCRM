import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'utils/const_utils.dart';
import 'utils/route_utils.dart';
import 'utils/variable_utisl.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// INITIALIZE LOCAL STORAGE
  await GetStorage.init();

  ///FIREBASE INITIALIZATION
  // await Firebase.initializeApp();

  /// FIREBASE BACKGROUND NOTIFICATION LISTENER
  // FirebaseMessaging.onBackgroundMessage(
  //     NotificationService.firebaseMessagingBackgroundHandler);

  /// SET PORTRAIT ORIENTATIONS
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //   SystemUiOverlayStyle(
    //     statusBarColor: Colors.red, // set to your preferred color
    //     statusBarBrightness: Brightness.light, // set to your preferred brightness
    //     statusBarIconBrightness: Brightness.dark, // set to your preferred brightness
    //   ),
    // );
    return LayoutBuilder(
      builder: (_, constraint) {
        logs('constraint.maxWidth:=>${constraint.maxWidth}');
        if (constraint.maxWidth == 0) {
          return const Material();
        }

        /// smartManagement: SmartManagement.full,
        return GetMaterialApp(
          title: VariableUtils.appName,

          debugShowCheckedModeBanner: false,
          getPages: RouteUtils.routePages,
          initialRoute: RouteUtils.splashScreen,
        );
      },
    );
  }
}
