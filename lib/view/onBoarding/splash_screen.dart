import 'package:flutter/material.dart';
import 'package:property_crm/common/custom_text_widget.dart';
import 'package:property_crm/utils/app_config_utils.dart';
import 'package:property_crm/utils/color_utils.dart';
import 'package:property_crm/utils/font_style_utils.dart';
import 'package:property_crm/utils/preferences_utils.dart';
import 'package:property_crm/utils/route_utils.dart';
import 'package:property_crm/utils/variable_utisl.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    init();
    super.initState();
  }

  void init() {
    Future.delayed(const Duration(seconds: 3), () {
      if (PreferencesUtils.getBool(PreferencesUtils.isOnBoarding) == false) {
        RouteUtils.navigateRoute(RouteUtils.onBoardingScreen);
      } else {
        RouteUtils.navigateRoute(RouteUtils.login);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ColorUtils.primaryColor,
      child: Center(
          child: CustomTextWidget(
        title: AppConfigUtils.appName,
        textStyle: FontTextStyle.poppinsW5S33White,
      )),
    );
  }
}
