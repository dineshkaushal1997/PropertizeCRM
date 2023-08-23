import 'package:flutter/material.dart';
import 'package:property_crm/common/setting_screen.dart';
import 'package:property_crm/utils/color_utils.dart';
import 'package:property_crm/utils/image_utils.dart';
import 'package:property_crm/utils/route_utils.dart';
import 'package:property_crm/utils/variable_utisl.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text(VariableUtils.Setting),
          backgroundColor: ColorUtils.primaryColor,
        ),
        backgroundColor:ColorUtils.grey200,
        body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                height: 750,
                width: 330,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  color: ColorUtils.white
                    ),
                child: Column(
                  children: [
                    CommonSetting(
                      imageWidget: ImageUtils.profile,onTapCallback: () {
                      RouteUtils.navigateRoute(RouteUtils.profileScreen);
                      },
                      text: VariableUtils.profile,
                       ),
                    Padding(padding: EdgeInsets.all(5),child: Divider(
                      thickness: 1,
                    ),),
                    CommonSetting(
                      imageWidget: ImageUtils.myProperties,
                      text: VariableUtils.myProperties,
                    ),
                    Padding(padding: EdgeInsets.all(5),child: Divider(
                      thickness: 1,
                    ),),
                    CommonSetting(
                      imageWidget: ImageUtils.language,
                      text: VariableUtils.changeLanguage,
                    ),
                    Padding(padding: EdgeInsets.all(5),child: Divider(
                      thickness: 1,
                    ),),
                    CommonSetting(
                      imageWidget: ImageUtils.faq,
                      text: VariableUtils.faq,
                    ),
                    Padding(padding: EdgeInsets.all(5),child: Divider(
                      thickness: 1,
                    ),),
                    CommonSetting(
                      imageWidget: ImageUtils.contact,
                      text: VariableUtils.contactUs,
                    ),
                    Padding(padding: EdgeInsets.all(5),child: Divider(
                      thickness: 1,
                    ),),
                    CommonSetting(
                      imageWidget: ImageUtils.rateUs,
                      text: VariableUtils.rateus,
                    ),
                    Padding(padding: EdgeInsets.all(5),child: Divider(
                      thickness: 1,
                    ),),
                    CommonSetting(
                      imageWidget: ImageUtils.terms,
                      text: VariableUtils.termcondition,
                    ),
                    Padding(padding: EdgeInsets.all(5),child: Divider(
                      thickness: 1,
                    ),),
                    CommonSetting(
                      imageWidget: ImageUtils.privacyPolicy,
                      text: VariableUtils.privacyPolicy,
                    ),
                    Padding(padding: EdgeInsets.all(5),child: Divider(
                      thickness: 1,
                    ),),
                    CommonSetting(
                      imageWidget: ImageUtils.logOut,
                      text: VariableUtils.logout,
                    ),


                  ],
                ),
              )),
        ));
  }
}
