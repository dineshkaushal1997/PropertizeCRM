import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:property_crm/common/custom_text_field.dart';
import 'package:property_crm/common/custom_text_widget.dart';
import 'package:property_crm/utils/color_utils.dart';
import 'package:property_crm/utils/const_utils.dart';
import 'package:property_crm/utils/extension_utils.dart';
import 'package:property_crm/utils/image_utils.dart';
import 'package:property_crm/utils/validation_utils.dart';
import 'package:property_crm/utils/variable_utisl.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              child: ImageUtils.loginImg,
            ),
            LoginForm(),
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: ConstUtils.horizontalPadding.sp),
        decoration: BoxDecoration(
            color: ColorUtils.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(10))),
        child: Column(
          children: [
            CustomTextWidget(title: VariableUtils.welcomeBack),
            CustomTextWidget(title: VariableUtils.loginToYourExitingAccount),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: ConstUtils.horizontalPadding.sp),
              child: CommonTextField(
                regularExpression: RegularExpression.digitsPattern,
                hintText: VariableUtils.enterPhoneNumber,
                sIcon: SvgPicture.asset('assets/icons/logOut.svg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
