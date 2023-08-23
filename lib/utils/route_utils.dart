import 'package:get/get.dart';
import 'package:property_crm/utils/const_utils.dart';
import 'package:property_crm/view/Category_Screen/add_maintenace_category.dart';
import 'package:property_crm/view/Category_Screen/add_property_category.dart';
import 'package:property_crm/view/Category_Screen/add_rent_category.dart';
import 'package:property_crm/view/Category_Screen/category_screen.dart';
import 'package:property_crm/view/auth/login_screen.dart';
import 'package:property_crm/view/auth/otp_verify.dart';
import 'package:property_crm/view/auth/register_screen.dart';
import 'package:property_crm/view/dashbord/bottom_nav_bar.dart';
import 'package:property_crm/view/onBoarding/on_boarding_screen.dart';
import 'package:property_crm/view/onBoarding/splash_screen.dart';
import 'package:property_crm/view/property_management.dart';

import '../view/profile_Screen.dart';

class RouteUtils {
  ///ALL ROUTES NAME
  static const splashScreen = '/SplashScreen';
  static const onBoardingScreen = '/OnBoardingScreen';
  static const login = '/login';
  static const register = '/Register';
  static const otpVerify = '/OtpVerify';
  static const bottomNavBar = '/BottomNavBar';
  static const propertyManagement = '/propertyManagement';
  static const categoryScreen = '/categoryScreen';
  static const profileScreen = '/profileScreen';
  static const addPropertymanagement = '/addPropertymanagement';
  static const addrent = '/addrent';
  static const addMaintenace = '/addmaintenace';

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
    ),
    GetPage(
      name: propertyManagement,
      page: () => const PropertyManagement(),
    ),
    GetPage(
      name: categoryScreen,
      page: () => const CategoryScreen(),
    ),
    GetPage(
      name: profileScreen,
      page: () => const ProfileScreen(),
    ), GetPage(
      name: addPropertymanagement,
      page: () => const AddPropertyManagement(),
    ), GetPage(
      name: addrent,
      page: () => const AddRentCategory(),
    ), GetPage(
      name: addMaintenace,
      page: () => const AddMaintenaceCategory(),
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
      case categoryScreen:
        Get.toNamed(
          categoryScreen,
        );
        break;
      case profileScreen:
        Get.toNamed(
          profileScreen,
        );
        break;case addPropertymanagement:
        Get.toNamed(
          addPropertymanagement,
        );
        break;case addrent:
        Get.toNamed(
          addrent,
        );
        break;case addMaintenace:
        Get.toNamed(
          addMaintenace,
        );
        break;

      default:
        logs('Not Route Match');
        break;
    }
  }
}
