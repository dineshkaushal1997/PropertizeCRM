import 'package:flutter/material.dart';
import 'package:property_crm/utils/color_utils.dart';
import 'package:property_crm/utils/variable_utisl.dart';
import 'package:property_crm/view/property_management_home.dart';

import 'property_management_flate.dart';


class PropertyManagement extends StatefulWidget {
  const PropertyManagement({Key? key}) : super(key: key);

  @override
  State<PropertyManagement> createState() => _PropertyManagementState();
}

class _PropertyManagementState extends State<PropertyManagement> {
  bool showHomeSection = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorUtils.primaryColor,
        title: Text(VariableUtils.PropertyManagement),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 45,
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.5,
                      color: showHomeSection
                          ?ColorUtils.unSelectColor
                          : Colors.black12,
                    ),
                    color: showHomeSection
                        ? ColorUtils.selectColor
                        : Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        showHomeSection = true; // Show HOME section
                      });
                    },
                    child: Center(child: Text(VariableUtils.home)),
                  ),
                ),
                Container(
                  height: 45,
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.5,
                      color: !showHomeSection
                          ? ColorUtils.unSelectColor
                          : Colors.black12,
                    ),
                    color: !showHomeSection
                        ? ColorUtils.selectColor
                        : Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        showHomeSection = false; // Show FLATE section
                      });
                    },
                    child: Center(child: Text(VariableUtils.flate)),
                  ),
                ),
              ],
            ),
          ),
          if (showHomeSection)
            Expanded(child: HomeManagement())
          else
            Expanded(child: FlateManagement()),

        ],
      ),
    );
  }
}
