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

  /// ------------------------------------------------------------------- ///
  /// TEXT FIELD OUTLINE DECORATION
  static InputBorder outLinePurpleR8 = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
    borderSide: BorderSide(color: ColorUtils.primaryColor, width: 1.0),
  );
  static InputBorder outLineGeryR8 = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
    borderSide: BorderSide(color: ColorUtils.grey.withOpacity(0.2), width: 1.0),
  );
  static InputBorder outLineRedR8 = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
    borderSide: BorderSide(color: Colors.red, width: 1.0),
  );
}
