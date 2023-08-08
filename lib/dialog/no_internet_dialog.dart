import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:property_crm/common/custom_btn.dart';
import 'package:property_crm/common/custom_text_widget.dart';
import 'package:property_crm/utils/color_utils.dart';
import 'package:property_crm/utils/connection_utils.dart';
import 'package:property_crm/utils/const_utils.dart';
import 'package:property_crm/utils/decoration_utils.dart';
import 'package:property_crm/utils/extension_utils.dart';
import 'package:property_crm/utils/font_style_utils.dart';
import 'package:property_crm/utils/image_utils.dart';
import 'package:property_crm/utils/size_config_utils.dart';
import 'package:property_crm/utils/variable_utisl.dart';

Future noInternetDialog() async {
  Future<void> onTap() async {
    final isConnection = await ConnectionUtils.checkConnectionStatus();
    if (isConnection) {
      Get.back();
    } else {
      ConstUtils.showToast(msg: VariableUtils.noConnectionMsg);
    }
  }

  await Get.dialog(
      WillPopScope(
        onWillPop: () => Future.value(false),
        child: Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.sp)),
          insetPadding: EdgeInsets.symmetric(
            horizontal: 20.sp,
          ),
          child: Container(
            decoration: DecorationUtils.dialogDecorationBox(),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ImageUtils.noInternetGIF,
                  CustomTextWidget(
                      title: VariableUtils.whoops,
                      textStyle: FontTextStyle.poppinsW6S20Primary),
                  SizeConfigUtils.h3,
                  CustomTextWidget(
                      title: VariableUtils.noConnectionMsg,
                      textStyle: FontTextStyle.poppinsW5S14Primary,
                      textAlign: TextAlign.center,
                      maxLine: 3),
                  SizeConfigUtils.h5,
                  CustomBtn(
                      onTap: onTap,
                      height: 35.sp,
                      bgColor: ColorUtils.primaryColor,
                      textStyle: FontTextStyle.poppinsW6S12White,
                      title: VariableUtils.tryAgain),
                  SizeConfigUtils.h5,
                ],
              ),
            ),
          ),
        ),
      ),
      barrierDismissible: false);
}
