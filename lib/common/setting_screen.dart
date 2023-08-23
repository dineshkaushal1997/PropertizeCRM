import 'package:flutter/material.dart';

class CommonSetting extends StatelessWidget {
  final Widget imageWidget;
  final String text;
  final VoidCallback? onTapCallback;

  const CommonSetting({
    Key? key,
    required this.imageWidget,
    required this.text,
    this.onTapCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        child: InkWell(
          child: imageWidget,
          onTap: onTapCallback,
        ),
      ),
      title: Text(text),
      trailing: Icon(Icons.arrow_forward_ios_outlined),
    );
  }
}
