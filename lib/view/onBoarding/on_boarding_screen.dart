import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:property_crm/common/custom_btn.dart';
import 'package:property_crm/common/custom_text_widget.dart';
import 'package:property_crm/utils/color_utils.dart';
import 'package:property_crm/utils/const_utils.dart';
import 'package:property_crm/utils/extension_utils.dart';
import 'package:property_crm/utils/font_style_utils.dart';
import 'package:property_crm/utils/preferences_utils.dart';
import 'package:property_crm/utils/route_utils.dart';
import 'package:property_crm/utils/size_config_utils.dart';
import 'package:property_crm/utils/variable_utisl.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingModel {
  final String title;
  final String description;
  final String img;

  OnBoardingModel({
    required this.title,
    required this.description,
    required this.img,
  });
}

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  RxInt selectedPageIndex = 0.obs;

  PageController pageController = PageController();

  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(
      title: VariableUtils.onBoardingTitle1,
      description: VariableUtils.onBoardingDec1,
      img: "onBoarding1.png",
    ),
    OnBoardingModel(
      title: VariableUtils.onBoardingTitle2,
      description: VariableUtils.onBoardingDec2,
      img: "onBoarding2.png",
    ),
    OnBoardingModel(
      title: VariableUtils.onBoardingTitle3,
      description: VariableUtils.onBoardingDec3,
      img: "onBoarding3.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return buildBody();
  }

  Widget buildBody() {
    return Material(
        child: SafeArea(
            child: Obx(
      () => Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () {
                  PreferencesUtils.setBool(
                      key: PreferencesUtils.isOnBoarding, value: true);
                  RouteUtils.navigateRoute(RouteUtils.login);
                },
                child: CustomTextWidget(
                  title: VariableUtils.skip.toUpperCase(),
                  textStyle: FontTextStyle.poppinsW6S12Primary,
                )),
          ),
          SizedBox(
            height: 50.h,
            child: PageView(
              controller: pageController,
              onPageChanged: (value) {
                selectedPageIndex.value = value;
              },
              children: onBoardingList
                  .map((e) => Column(
                        children: [
                          CustomTextWidget(
                              title: e.title,
                              textStyle: FontTextStyle.poppinsW6S20Black),
                          SizeConfigUtils.h3,
                          CustomTextWidget(
                              title: e.description,
                              textStyle: FontTextStyle.poppinsW5S14Black),
                          const Spacer(),
                          Image.asset(
                            'assets/images/${e.img}',
                            scale: 2,
                          ),
                          SizeConfigUtils.h4,
                        ],
                      ))
                  .toList(),
            ),
          ),
          const Spacer(),
          AnimatedSmoothIndicator(
            activeIndex: selectedPageIndex.value,
            count: onBoardingList.length,
            effect: const ExpandingDotsEffect(
                activeDotColor: ColorUtils.primaryColor),
          ),
          const Spacer(),
          CustomBtn(
              onTap: () {
                if (selectedPageIndex.value < onBoardingList.length - 1) {
                  pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease);
                } else {
                  PreferencesUtils.setBool(
                      key: PreferencesUtils.isOnBoarding, value: true);
                  RouteUtils.navigateRoute(RouteUtils.login);
                }
              },
              width: 40.w,
              height: 15.w,
              bgColor: ColorUtils.primaryColor,
              title: selectedPageIndex.value == onBoardingList.length - 1
                  ? VariableUtils.done
                  : VariableUtils.next),
          SizeConfigUtils.h15
        ],
      ),
    )));
  }
}
