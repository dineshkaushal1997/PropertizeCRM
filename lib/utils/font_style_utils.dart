import 'package:flutter/material.dart';
import 'package:property_crm/utils/color_utils.dart';
import 'package:property_crm/utils/extension_utils.dart';

/// FONT FAMILY
const String poppinsFamily = "Poppins";

/// ------------------------------------------------------------------- ///

/// FONT WEIGHT
class FontWeightClass {
  static const regular = FontWeight.w400;
  static const medium = FontWeight.w500;
  static const semiB = FontWeight.w600;
  static const bold = FontWeight.w700;
  static const extraB = FontWeight.w800;
  static const black = FontWeight.w900;
}

/// ------------------------------------------------------------------- ///
/// FONT TEXT STYLE

class FontTextStyle {
  /// ........................................ 33 SIZE........................................... ///
  static TextStyle poppinsW5S33White = poppinsW6S14White.copyWith(
      fontWeight: FontWeightClass.medium, fontSize: 33.sp);

  /// ........................................ 20 SIZE........................................... ///
  static TextStyle poppinsW6S20Black = TextStyle(
      fontFamily: poppinsFamily,
      color: ColorUtils.black,
      fontSize: 20.sp,
      fontWeight: FontWeightClass.semiB);
  static TextStyle poppinsW6S20Primary = poppinsW6S20Black.copyWith(
    color: ColorUtils.primaryColor,
  );

  /// ........................................ 14 SIZE........................................... ///
  static TextStyle poppinsW6S14Primary = poppinsW6S20Black.copyWith(
      color: ColorUtils.primaryColor, fontSize: 14.sp);
  static TextStyle poppinsW6S14White = poppinsW6S14Primary.copyWith(
    color: ColorUtils.white,
  );
  static TextStyle poppinsW5S14Primary =
      poppinsW6S14Primary.copyWith(fontWeight: FontWeightClass.medium);
  static TextStyle poppinsW5S14Black = poppinsW5S14Primary.copyWith(
    color: ColorUtils.black,
  );

  /// ........................................ 12 SIZE........................................... ///
  static TextStyle poppinsW6S12White =
      poppinsW6S20Black.copyWith(color: ColorUtils.white, fontSize: 12.sp);
  static TextStyle poppinsW6S12Primary =
      poppinsW6S12White.copyWith(color: ColorUtils.primaryColor);
}
