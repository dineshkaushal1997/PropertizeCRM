import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:property_crm/utils/color_utils.dart';
import 'package:property_crm/utils/extension_utils.dart';


class DecorationUtils {
  /// DIALOG  DECORATION
  static BoxDecoration dialogDecorationBox({double? radius, Color? color}) {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(radius ?? 10.sp),
        color: color ?? ColorUtils.white);
  }

}
