import 'package:get/get.dart';
import 'package:property_crm/utils/const_utils.dart';
import 'package:property_crm/view/onBoarding/splash_screen.dart';
class RouteUtils {
  ///ALL ROUTES NAME
  static const splashScreen = '/splashScreen';
  static const login = '/login';

  /// --------------------------------   GET PAGES   --------------------------------- ///

  /// ALL ROUTE SET WITH BINDING
  static List<GetPage> routePages = [
    // ignore: prefer_const_constructors
    GetPage(
      name: splashScreen,
      page: () => const SplashScreen(),
    ),
  ];

  /// --------------------------------  NAVIGATOR  ----------------------------------- ///
  ///NAVIGATE ROUTE
  static navigateRoute(String route, {dynamic args}) {
    switch (route) {
      case splashScreen:
        Get.toNamed(
          splashScreen,
        );
        break;

      default:
        logs('Not Route Match');
        break;
    }
  }
}
