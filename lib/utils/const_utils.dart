import 'package:flutter/foundation.dart';
import 'dart:developer' as dev;

import 'package:get/get.dart';
import 'package:property_crm/utils/color_utils.dart';

void logs(String message) {
  if (kDebugMode) {
    dev.log(message);
  }
}

class ConstUtils{
  static int horizontalPadding=15;
  static const kPasswordLength = 6;
  static const kPhoneNumberLength = 6;
  static showToast({required String msg, bool success = false}) {
    return Get.showSnackbar(GetSnackBar(
      message: msg,
      backgroundColor: success ? ColorUtils.green : ColorUtils.red,
      duration: const Duration(seconds: 3),
    ));
  }

}