import 'package:flutter/material.dart';
import 'package:property_crm/utils/color_utils.dart';
import 'package:property_crm/utils/variable_utisl.dart';
import 'package:property_crm/view/Category_Screen/add_flate_category.dart';
import 'package:property_crm/view/Category_Screen/add_home_category.dart';


class AddMaintenaceCategory extends StatefulWidget {
  const AddMaintenaceCategory({Key? key}) : super(key: key);

  @override
  State<AddMaintenaceCategory> createState() => _AddMaintenaceCategoryState();
}

class _AddMaintenaceCategoryState extends State<AddMaintenaceCategory> {
  bool showHomeSection = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Color(0xff3428AB),
        centerTitle: true,
        title: Text(VariableUtils.addDetails),
      ),
      backgroundColor:ColorUtils.grey200,
      body:  Column(
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
                          ? Color(0xff3428AB)
                          : Colors.black12,
                    ),
                    color: showHomeSection
                        ? Color(0xffE3E0F9)
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
                          ? Color(0xff3428AB)
                          : Colors.black12,
                    ),
                    color: !showHomeSection
                        ? Color(0xffE3E0F9)
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
            Expanded(child: AddHomeCategory())
          else
            Expanded(child: AddFlateCategory()),

        ],
      ),
    );
  }
}
