import 'package:flutter/material.dart';
import 'package:property_crm/common/custom_text_field.dart';
import 'package:property_crm/utils/color_utils.dart';
import 'package:property_crm/utils/image_utils.dart';
import 'package:property_crm/utils/validation_utils.dart';
import 'package:property_crm/utils/variable_utisl.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorUtils.primaryColor,
        title: const Text(VariableUtils.profile),
      ),      backgroundColor:ColorUtils.grey200,

      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: CircleAvatar(
                radius: 45,
              ),
            ),
            const Center(
              child: Text(VariableUtils.addImage),
            ),const SizedBox(
              height: 10,
            ),
            Padding(
                padding: const EdgeInsets.only(top: 5, left: 25, right: 20),
                child: CommonTextField(pIcon: ImageUtils.person,
                  hintText: VariableUtils.name,
                  sIcon: ImageUtils.edit,
                  regularExpression: RegularExpression.alphabetPattern,
                )),const SizedBox(
              height: 15,
            ),
            Padding(
                padding: const EdgeInsets.only(top: 5, left: 25, right: 20),
                child: CommonTextField(
                  pIcon: ImageUtils.phone,
                  hintText: VariableUtils.number,
                  regularExpression: RegularExpression.digitsPattern,
                )),

            const SizedBox(
              height: 150,
            ),
            Center(
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xff3428AB)),
                child: const Center(
                  child: Text(
                    VariableUtils.save,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
