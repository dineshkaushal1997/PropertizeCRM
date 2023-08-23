import 'package:flutter/material.dart';
import 'package:property_crm/common/custom_text_field.dart';
import 'package:property_crm/utils/color_utils.dart';
import 'package:property_crm/utils/validation_utils.dart';
import 'package:property_crm/utils/variable_utisl.dart';

class AddFlateCategory extends StatefulWidget {
  const AddFlateCategory({Key? key}) : super(key: key);

  @override
  State<AddFlateCategory> createState() => _AddFlateCategoryState();
}

class _AddFlateCategoryState extends State<AddFlateCategory> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:ColorUtils.grey200,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, left: 25),
              child: Text(VariableUtils.block),
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 5, left: 25,right:20 ),
                      child: CommonTextField(
                        regularExpression: RegularExpression.digitsPattern,
                      )
                    )),

              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 25,right:20),
              child: Text(VariableUtils.floor),
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 5, left: 25,right:20),
                      child: CommonTextField(
                        regularExpression: RegularExpression.digitsPattern,
                      )
                    )),

                Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 5, left: 25,right:20),
                      child: CommonTextField(
                        regularExpression: RegularExpression.digitsPattern,
                      )
                    )),

              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 25),
              child: Text(VariableUtils.flate),
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 5, left: 25,right:20),
                      child:CommonTextField(
                        regularExpression: RegularExpression.digitsPattern,
                      )
                    )),

                Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 5, left: 25,right:20),
                      child: CommonTextField(
                        regularExpression: RegularExpression.digitsPattern,
                      )
                    )),

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
                  child: Text('Save',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}
