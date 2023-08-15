import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:property_crm/common/custom_btn.dart';
import 'package:property_crm/common/custom_text_field.dart';
import 'package:property_crm/common/custom_text_widget.dart';
import 'package:property_crm/utils/color_utils.dart';
import 'package:property_crm/utils/const_utils.dart';
import 'package:property_crm/utils/extension_utils.dart';
import 'package:property_crm/utils/font_style_utils.dart';
import 'package:property_crm/utils/image_utils.dart';
import 'package:property_crm/utils/size_config_utils.dart';
import 'package:property_crm/utils/validation_utils.dart';
import 'package:property_crm/utils/variable_utisl.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 5.h,
              ),
              child: ImageUtils.loginImg,
            ),
            const RegisterForm(),
          ],
        ),
      ),
    );
  }
}

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    super.key,
  });

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
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizeConfigUtils.h3,
              CustomTextWidget(
                  title: VariableUtils.letsGetStarted,
                  textStyle: FontTextStyle.poppinsW6S18Primary),
              CustomTextWidget(
                title: VariableUtils.createAnAccount,
                textStyle: FontTextStyle.poppinsW4S12Black,
              ),
              SizeConfigUtils.h7,
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: ConstUtils.horizontalPadding.sp),
                child: CommonTextField(
                  regularExpression: RegularExpression.alphabetSpacePattern,
                  hintText: VariableUtils.name,
                  pIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.sp),
                    child: ImageUtils.person,
                  ),
                ),
              ),
              SizeConfigUtils.h3,
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: ConstUtils.horizontalPadding.sp),
                child: CommonTextField(
                  regularExpression: RegularExpression.digitsPattern,
                  hintText: VariableUtils.enterPhoneNumber,
                  pIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.sp),
                    child: ImageUtils.phone,
                  ),
                ),
              ),
              SizeConfigUtils.h3,
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: ConstUtils.horizontalPadding.sp),
                child: CommonTextField(
                  regularExpression: RegularExpression.addressValidationPattern,
                  hintText: VariableUtils.city,
                  pIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.sp),
                    child: ImageUtils.location,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: ConstUtils.horizontalPadding.sp, vertical: 25.sp),
                child: CustomBtn(
                  onTap: () {},
                  title: VariableUtils.signUp,
                  bgColor: ColorUtils.primaryColor,
                  radius: 50.sp,
                  height: 45.sp,
                ),
              ),
              RichText(
                  text: TextSpan(
                      style: FontTextStyle.poppinsW5S12Black,
                      text: VariableUtils.alreadyHaveAnAccount,
                      children: [
                    TextSpan(
                      text: VariableUtils.signIn,
                      style: FontTextStyle.poppinsW6S12Primary,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.back(),
                    )
                  ])),
              SizeConfigUtils.h5,
            ],
          ),
        ),
      ),
    );
  }
}
