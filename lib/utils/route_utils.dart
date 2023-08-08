import 'package:get/get.dart';
import 'package:property_crm/utils/const_utils.dart';
import 'package:property_crm/view/onBoarding/on_boarding_screen.dart';
import 'package:property_crm/view/onBoarding/splash_screen.dart';

class RouteUtils {
  ///ALL ROUTES NAME
  static const splashScreen = '/SplashScreen';
  static const onBoardingScreen = '/OnBoardingScreen';
  static const login = '/login';

  /// --------------------------------   GET PAGES   --------------------------------- ///

  /// ALL ROUTE SET WITH BINDING
  static List<GetPage> routePages = [
    // ignore: prefer_const_constructors
    GetPage(
      name: splashScreen,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: onBoardingScreen,
      page: () =>  OnBoardingScreen(),
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
      case onBoardingScreen:
        Get.offAndToNamed(
          onBoardingScreen,
        );
        break;

      default:
        logs('Not Route Match');
        break;
    }
  }
}
