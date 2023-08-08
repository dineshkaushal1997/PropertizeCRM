import 'package:flutter/material.dart';
import 'package:property_crm/utils/variable_utisl.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget(
      {Key? key,
      required this.title,
      this.textStyle,
      this.maxLine = 1,
      this.textAlign,
      this.overflow,
      this.textDecoration})
      : super(key: key);
  final String? title;
  final TextStyle? textStyle;
  final int maxLine;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final TextDecoration? textDecoration;

  @override
  Widget build(BuildContext context) {
    return Text(
      title ?? VariableUtils.none,
      style:
          textStyle?.copyWith(decoration: textDecoration ?? TextDecoration.none),
      maxLines: maxLine,
      textAlign: textAlign ?? TextAlign.left,
      overflow: overflow ?? TextOverflow.clip,
    );
  }
}
