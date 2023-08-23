import 'package:flutter/material.dart';
import 'package:property_crm/common/custom_text_field.dart';
import 'package:property_crm/utils/color_utils.dart';
import 'package:property_crm/utils/validation_utils.dart';
import 'package:property_crm/utils/variable_utisl.dart';

class AddHomeCategory extends StatefulWidget {
  const AddHomeCategory({Key? key}) : super(key: key);

  @override
  State<AddHomeCategory> createState() => _AddHomeCategoryState();
}

class _AddHomeCategoryState extends State<AddHomeCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.grey200,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Center(
                  child: CircleAvatar(
                      radius: 100, backgroundColor: Color(0xffECEBFB)),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: CircleAvatar(
                      radius: 80,
                      backgroundColor: Color(0xff3428AB),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 25),
              child: Text(VariableUtils.companyName),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: CommonTextField(
                regularExpression: RegularExpression.alphabetPattern,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 25),
              child: Text(VariableUtils.number),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: CommonTextField(
                regularExpression: RegularExpression.alphabetPattern,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 25),
              child: Text(VariableUtils.city),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: CommonTextField(
                regularExpression: RegularExpression.alphabetPattern,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 25),
              child: Text(VariableUtils.block),
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(top: 5, left: 25, right: 20),
                        child: CommonTextField(
                          regularExpression: RegularExpression.digitsPattern,
                        ))),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 25),
              child: Text(VariableUtils.blockA),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(top: 5, left: 25, right: 20),
                        child: CommonTextField(
                          regularExpression: RegularExpression.digitsPattern,
                        ))),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(top: 5, left: 25, right: 20),
                        child: CommonTextField(
                          regularExpression: RegularExpression.digitsPattern,
                        ))),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 25, right: 20),
              child: Text(VariableUtils.blockB),
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(top: 5, left: 25, right: 20),
                        child: CommonTextField(
                          regularExpression: RegularExpression.digitsPattern,
                        ))),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(top: 5, left: 25, right: 20),
                        child: CommonTextField(
                          regularExpression: RegularExpression.digitsPattern,
                        ))),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 25, right: 20),
              child: Text(VariableUtils.blockC),
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(top: 5, left: 25, right: 20),
                        child: CommonTextField(
                          regularExpression: RegularExpression.digitsPattern,
                        ))),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(top: 5, left: 25, right: 20),
                        child: CommonTextField(
                          regularExpression: RegularExpression.digitsPattern,
                        ))),
              ],
            ),
            SizedBox(
              height: 150,
            ),
            Center(
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff3428AB)),
                child: Center(
                  child: Text(
                    VariableUtils.save,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
