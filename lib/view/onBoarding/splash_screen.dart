import 'package:flutter/material.dart';
import 'package:property_crm/common/custom_text_widget.dart';
import 'package:property_crm/utils/color_utils.dart';
import 'package:property_crm/utils/font_style_utils.dart';
import 'package:property_crm/utils/variable_utisl.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ColorUtils.primaryColor,
      child: Center(
          child: CustomTextWidget(
        title: VariableUtils.appName,
        textStyle: FontTextStyle.poppinsW5S33White,
      )),
    );
  }
}
