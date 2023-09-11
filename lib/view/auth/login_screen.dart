import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:property_crm/common/custom_btn.dart';
import 'package:property_crm/common/custom_text_field.dart';
import 'package:property_crm/common/custom_text_widget.dart';
import 'package:property_crm/common/loading_indicator.dart';
import 'package:property_crm/utils/color_utils.dart';
import 'package:property_crm/utils/const_utils.dart';
import 'package:property_crm/utils/extension_utils.dart';
import 'package:property_crm/utils/font_style_utils.dart';
import 'package:property_crm/utils/image_utils.dart';
import 'package:property_crm/utils/route_utils.dart';
import 'package:property_crm/utils/size_config_utils.dart';
import 'package:property_crm/utils/validation_utils.dart';
import 'package:property_crm/utils/variable_utisl.dart';
import 'package:property_crm/viewmodel/auth_viewmodel.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 5.h,
                  ),
                  child: ImageUtils.loginImg,
                ),
                LoginForm(),
              ],
            ),
            GetBuilder<AuthViewModel>(
              builder: (controller) {
                if (!controller.isLoading) {
                  return const SizedBox();
                }
                return postDataLoadingIndicator();
              },
            )
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  LoginForm({
    super.key,
  });

  String pNumber = "";

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: Get.width,
        margin:
            EdgeInsets.symmetric(horizontal: ConstUtils.horizontalPadding.sp),
        decoration: const BoxDecoration(
            color: ColorUtils.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(10))),
        child: Column(
          children: [
            SizeConfigUtils.h3,
            CustomTextWidget(
                title: VariableUtils.welcomeBack,
                textStyle: FontTextStyle.poppinsW6S18Primary),
            CustomTextWidget(
              title: VariableUtils.loginToYourExitingAccount,
              textStyle: FontTextStyle.poppinsW4S12Black,
            ),
            SizeConfigUtils.h7,
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: ConstUtils.horizontalPadding.sp),
              child: CommonTextField(
                regularExpression: RegularExpression.digitsPattern,
                hintText: VariableUtils.enterPhoneNumber,
                onChange: (value) {
                  pNumber = value;
                },
                pIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.sp),
                  child: ImageUtils.phone,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: ConstUtils.horizontalPadding.sp, vertical: 25.sp),
              child: CustomBtn(
                onTap: () {
                  if (pNumber.isNotEmpty) {
                    FocusScope.of(context).unfocus();
                    Get.find<AuthViewModel>().signIn("+91 $pNumber");
                    //RouteUtils.navigateRoute(RouteUtils.otpVerify);
                  }
                },
                title: VariableUtils.signIn,
                bgColor: ColorUtils.primaryColor,
                radius: 50.sp,
                height: 45.sp,
              ),
            ),
            const Spacer(),
            RichText(
                text: TextSpan(
                    style: FontTextStyle.poppinsW5S12Black,
                    text: VariableUtils.dontHaveAnAccount,
                    children: [
                  TextSpan(
                    text: VariableUtils.signUp,
                    style: FontTextStyle.poppinsW6S12Primary,
                    recognizer: TapGestureRecognizer()
                      ..onTap =
                          () => RouteUtils.navigateRoute(RouteUtils.register),
                  )
                ])),
            SizeConfigUtils.h5,
          ],
        ),
      ),
    );
  }
}
