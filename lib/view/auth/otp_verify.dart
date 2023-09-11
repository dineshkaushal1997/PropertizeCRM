import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:property_crm/common/custom_btn.dart';
import 'package:property_crm/common/custom_text_widget.dart';
import 'package:property_crm/utils/color_utils.dart';
import 'package:property_crm/utils/const_utils.dart';
import 'package:property_crm/utils/extension_utils.dart';
import 'package:property_crm/utils/font_style_utils.dart';
import 'package:property_crm/utils/image_utils.dart';
import 'package:property_crm/utils/size_config_utils.dart';
import 'package:property_crm/utils/variable_utisl.dart';
import 'package:property_crm/viewmodel/auth_viewmodel.dart';

class OtpVerify extends StatefulWidget {
  const OtpVerify({super.key});

  @override
  State<OtpVerify> createState() => _OtpVerifyState();
}

class _OtpVerifyState extends State<OtpVerify> {
  RxInt otpTime = 30.obs;
  late Timer timer;

  @override
  void initState() {
    init();
    super.initState();
  }

  void init() {
    timer = Timer.periodic(const Duration(seconds: 1), (time) {
      if (otpTime.value == 0) {
        timer.cancel();
      } else {
        otpTime.value -= 1;
      }
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 5.h,
              ),
              child: ImageUtils.otpImg,
            ),
            OtpForm(
                key: UniqueKey(),
                otpTime: otpTime,
                pNumber: Get.arguments,
                onResendOtpTap: () {
                  print('Call---');
                  otpTime = 30.obs;
                  init();
                }),
          ],
        ),
      ),
    );
  }
}

class OtpForm extends StatelessWidget {
   OtpForm(
      {super.key, required this.otpTime, required this.onResendOtpTap, required this.pNumber});

  final RxInt otpTime;
  final VoidCallback onResendOtpTap;
  final String pNumber;

  String otp="";
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      width: Get.width,
      margin: EdgeInsets.symmetric(horizontal: ConstUtils.horizontalPadding.sp),
      decoration: const BoxDecoration(
          color: ColorUtils.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(10))),
      child: Column(
        children: [
          SizeConfigUtils.h3,
          CustomTextWidget(
              title: VariableUtils.verifyPhoneNumber,
              textStyle: FontTextStyle.poppinsW6S18Primary),
          CustomTextWidget(
            title: VariableUtils.enterCodeSentToYourNumber,
            textStyle: FontTextStyle.poppinsW4S12Black,
          ),
          SizeConfigUtils.h3,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTextWidget(
                title: pNumber,
                textStyle: FontTextStyle.poppinsW6S12Primary,
              ),
              Obx(
                () => CustomTextWidget(
                  title: "00:${otpTime > 9 ? otpTime : "0$otpTime"}",
                  textStyle: FontTextStyle.poppinsW6S12Primary,
                ),
              )
            ],
          ),
          SizeConfigUtils.h7,
          PinCodeTextField(
            appContext: context,
            length: 6,
            cursorHeight: 15.sp,
            cursorColor: ColorUtils.black26,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            textStyle: FontTextStyle.poppinsW6S14White,
            enableActiveFill: true,
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(5),
              fieldHeight: 40.sp,
              fieldWidth: 40.sp,
              inactiveFillColor: ColorUtils.greyF2,
              activeFillColor: ColorUtils.primaryColor,
              selectedFillColor: ColorUtils.greyF2,
              activeColor: ColorUtils.transparent,
              inactiveColor: ColorUtils.transparent,
              selectedColor: ColorUtils.transparent,
            ),
            keyboardType: TextInputType.number,
            onCompleted: (v) {
              debugPrint("Completed");
              otp=v;
            },
            onChanged: (value) {},
          ),
          const Spacer(),
          RichText(
              text: TextSpan(
                  style: FontTextStyle.poppinsW5S12Black,
                  text: VariableUtils.dintReceiveCode,
                  children: [
                    TextSpan(
                      text: VariableUtils.resendAgain,
                      style: FontTextStyle.poppinsW6S12Primary,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => onResendOtpTap(),
                    )
                  ])),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: ConstUtils.horizontalPadding.sp, vertical: 15.sp),
            child: CustomBtn(
              onTap: () {
                if (otp.isNotEmpty) {
                  FocusScope.of(context).unfocus();
                  Get.find<AuthViewModel>().verifyPhoneNumber(otp);
                  //RouteUtils.navigateRoute(RouteUtils.otpVerify);
                }
              },
              title: VariableUtils.continueStr,
              bgColor: ColorUtils.primaryColor,
              radius: 50.sp,
              height: 45.sp,
            ),
          ),
          SizeConfigUtils.h5,
        ],
      ),
    ));
  }
}
