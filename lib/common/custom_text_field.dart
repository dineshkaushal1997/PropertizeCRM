/// KEY : customTextField
/// Desc. : Add Custom Custom TextField
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:property_crm/utils/color_utils.dart';
import 'package:property_crm/utils/const_utils.dart';
import 'package:property_crm/utils/decoration_utils.dart';
import 'package:property_crm/utils/enum_utils.dart';
import 'package:property_crm/utils/extension_utils.dart';
import 'package:property_crm/utils/typedef_utils.dart';
import 'package:property_crm/utils/validation_utils.dart';

class CommonTextField extends StatelessWidget {
  final String? initialValue;
  final bool? isValidate;
  final bool? readOnly;
  final TextInputType? textInputType;
  final ValidationType? validationType;
  final String? regularExpression;
  final int? inputLength;
  final String? hintText;
  final String? validationMessage;
  final int maxLine;
  final Widget? sIcon;
  final Widget? pIcon;
  final bool? obscureValue;
  final OnChangeString? onChange;
  final OnChangeString? onFieldSubmitted;

  const CommonTextField(
      {super.key,
      this.isValidate,
      this.textInputType,
      this.validationType,
      required this.regularExpression,
      this.inputLength,
      this.readOnly = false,
      this.hintText,
      this.validationMessage,
      this.maxLine = 1,
      this.sIcon,
      this.pIcon,
      this.onChange,
      this.onFieldSubmitted,
      this.initialValue = '',
      this.obscureValue});

  /// PLEASE IMPORT GETX PACKAGE
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      inputFormatters: regularExpression ==
              RegularExpression.addressValidationPattern
          ? []
          : [
              LengthLimitingTextInputFormatter(inputLength),
              FilteringTextInputFormatter.allow(RegExp(regularExpression!))
            ],
      obscureText:
          validationType == ValidationType.Password ? obscureValue! : false,
      onChanged: onChange,
      onFieldSubmitted: onFieldSubmitted,
      enabled: !readOnly!,
      readOnly: readOnly!,
      validator: (value) {
        return isValidate == false
            ? null
            : value!.isEmpty
                ? validationMessage
                : validationType == ValidationType.Email
                    ? ValidationMethod.validateUserName(value)
                    : validationType == ValidationType.PNumber
                        ? ValidationMethod.validatePhoneNo(value)
                        : null;
      },
      // style: FontTextStyle.poppinsW4S16Black,
      keyboardType:
          maxLine > 1 ? TextInputType.multiline : TextInputType.text,
      textInputAction:
          maxLine > 1 ? TextInputAction.newline : TextInputAction.done,
      maxLines: maxLine,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(
            top: Get.height * 0.020,
            bottom: Get.height * 0.020,
            left: 15,
          ),
          focusedBorder: DecorationUtils.outLinePurpleR8,
          enabledBorder: DecorationUtils.outLineGeryR8,
          disabledBorder: DecorationUtils.outLineGeryR8,
          errorBorder: DecorationUtils.outLineRedR8,
          focusedErrorBorder: DecorationUtils.outLineRedR8,
          filled: true,
          suffixIconConstraints:
              const BoxConstraints(maxWidth: 40, maxHeight: 40),
          prefixIconConstraints:
              const BoxConstraints(maxWidth: 40, maxHeight: 40),
          suffixIcon: sIcon ?? const SizedBox(),
          prefixIcon: pIcon ?? const SizedBox(),
          fillColor: ColorUtils.white,
          // hintStyle: FontTextStyle.poppinsW5S12Grey,
          hintText: hintText),
    );
  }
}
