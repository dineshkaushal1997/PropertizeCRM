import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:property_crm/utils/app_config_utils.dart';
import 'utils/const_utils.dart';
import 'utils/route_utils.dart';
import 'utils/variable_utisl.dart';
import 'viewmodel/auth_viewmodel.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// INITIALIZE LOCAL STORAGE
  await GetStorage.init();

  ///FIREBASE INITIALIZATION
   await Firebase.initializeApp();

  /// FIREBASE BACKGROUND NOTIFICATION LISTENER
  // FirebaseMessaging.onBackgroundMessage(
  //     NotificationService.firebaseMessagingBackgroundHandler);

  /// SET PORTRAIT ORIENTATIONS
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraint) {
        logs('constraint.maxWidth:=>${constraint.maxWidth}');
        if (constraint.maxWidth == 0) {
          return const Material();
        }

        /// smartManagement: SmartManagement.full,
        return GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus!.unfocus();
          },
          child: GetMaterialApp(
            title: AppConfigUtils.appName,
            debugShowCheckedModeBanner: false,
            getPages: RouteUtils.routePages,
            initialRoute: RouteUtils.splashScreen,
          ),
        );
      },
    );
  }

  /// ============================= CONTROLLER INITIALIZE ============================= ///
  final AuthViewModel authViewModel =
      Get.put<AuthViewModel>(AuthViewModel(), );
}
