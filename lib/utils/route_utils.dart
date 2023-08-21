import 'package:get/get.dart';
import 'package:property_crm/utils/const_utils.dart';
import 'package:property_crm/view/auth/login_screen.dart';
import 'package:property_crm/view/auth/otp_verify.dart';
import 'package:property_crm/view/auth/register_screen.dart';
import 'package:property_crm/view/dashbord/bottom_nav_bar.dart';
import 'package:property_crm/view/onBoarding/on_boarding_screen.dart';
import 'package:property_crm/view/onBoarding/splash_screen.dart';
import 'package:property_crm/view/property_management.dart';

class RouteUtils {
  ///ALL ROUTES NAME
  static const splashScreen = '/SplashScreen';
  static const onBoardingScreen = '/OnBoardingScreen';
  static const login = '/login';
  static const register = '/Register';
  static const otpVerify = '/OtpVerify';
  static const bottomNavBar = '/BottomNavBar';
  static const propertyManagement = '/propertyManagement';

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
      page: () => OnBoardingScreen(),
    ),
    GetPage(
      name: login,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: register,
      page: () => const RegisterScreen(),
    ),
    GetPage(
      name: otpVerify,
      page: () => const OtpVerify(),
    ),
    GetPage(
      name: bottomNavBar,
      page: () => const BottomNavBar(),
    ),  GetPage(
      name: propertyManagement,
      page: () => const PropertyManagement(),
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
      case login:
        Get.offAndToNamed(
          login,
        );
        break;
      case register:
        Get.toNamed(
          register,
        );
        break;
      case otpVerify:
        Get.toNamed(
          otpVerify,
        );
        break;
      case bottomNavBar:
        Get.offAllNamed(
          bottomNavBar,
        );
        break;
      case propertyManagement:
        Get.toNamed(
          propertyManagement,
        );
        break;

      default:
        logs('Not Route Match');
        break;
    }
  }
}
