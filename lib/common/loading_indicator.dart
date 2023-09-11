/// KEY : circleIndicator
/// Desc. : Add Full Screen Circle Indicator And Only Circle Indicator
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:property_crm/utils/color_utils.dart';
import 'package:property_crm/utils/extension_utils.dart';

Container postDataLoadingIndicator() {
  return Container(
      height: Get.height,
      width: Get.width,
      color: ColorUtils.black26,
      child: getDataLoadingIndicator());
}

Widget getDataLoadingIndicator() {
  // ignore: prefer_const_constructors
  return Center(
    child: SizedBox(
      width: 70.sp,
      height: 70.sp,
      child: LoadingIndicator(
        indicatorType: Indicator.ballClipRotateMultiple,
        colors: const [
          ColorUtils.primaryColor,
        ],
        strokeWidth: 3.sp,
      ),
    ),
  );
}
