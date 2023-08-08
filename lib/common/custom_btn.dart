import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:property_crm/common/custom_text_widget.dart';
import 'package:property_crm/utils/color_utils.dart';
import 'package:property_crm/utils/extension_utils.dart';
import 'package:property_crm/utils/font_style_utils.dart';
import 'package:property_crm/utils/typedef_utils.dart' as tyDef;

class CustomBtn extends StatelessWidget {
  final tyDef.OnTap onTap;
  final String title;
  final double? radius;
  final double? height;
  final double? width;
  final Color? bgColor;
  final Color? borderColor;
  final TextStyle? textStyle;

  // ignore: use_key_in_widget_constructors
  const CustomBtn({
    required this.onTap,
    required this.title,
    this.radius,
    this.height,
    this.width,
    this.bgColor,
    this.textStyle,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ColorUtils.transparent,
      child: Ink(
        height: height ?? 48.sp,
        width: width ?? Get.width,
        decoration: BoxDecoration(
          color: bgColor ?? ColorUtils.transparent,
          border: Border.all(color: borderColor ?? ColorUtils.primaryColor),
          borderRadius: BorderRadius.circular(radius ?? 7.sp),
        ),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(radius ?? 7.sp),
          child: Center(
            child: CustomTextWidget(
              title: title.toUpperCase(),
              textStyle: textStyle ??
                  (bgColor == null
                      ? FontTextStyle.poppinsW6S14Primary
                      : FontTextStyle.poppinsW6S14White),
            ),
          ),
        ),
      ),
    );
  }
}
