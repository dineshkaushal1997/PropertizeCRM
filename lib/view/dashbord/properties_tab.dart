import 'package:flutter/material.dart';
import 'package:property_crm/common/custom_text_widget.dart';
import 'package:property_crm/utils/color_utils.dart';
import 'package:property_crm/utils/image_utils.dart';
import 'package:property_crm/utils/route_utils.dart';
import 'package:property_crm/utils/size_config_utils.dart';
import 'package:property_crm/utils/variable_utisl.dart';

class PropertiesTab extends StatefulWidget {
  const PropertiesTab({Key? key}) : super(key: key);

  @override
  State<PropertiesTab> createState() => _PropertiesTabState();
}

class _PropertiesTabState extends State<PropertiesTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff3428AB),
        onPressed: () {
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => CategoryScreen(),
          //     ));
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xff3428AB),
        centerTitle: true,
        leading: SizedBox(
          height: 50,
          width: 35,
          child: IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search action
            },
          ),
        ),
        title: CustomTextWidget(title: VariableUtils.shortAppName),
        actions: [
          SizedBox(
            height: 50,
            width: 35,
            child: IconButton(
              icon: ImageUtils.notification,
              onPressed: () {
                // Handle notifications action
              },
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Container(
              height: 100,
              width: 10,
              decoration: BoxDecoration(
                  border: Border.all(width: 0.5, color: Colors.black12),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: ColorUtils.primaryColor,
                    radius: 27,
                  ),
                  title: CustomTextWidget(
                    title: VariableUtils.companyName,
                  ),
                  trailing: PopupMenuButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onSelected: (value) {
                      // Handle the selected option
                      if (value == 'edit') {
                        // Open the edit dialog
                        RouteUtils.navigateRoute(RouteUtils.propertyManagement);
                      } else if (value == 'delete') {
                        // Perform the delete action
                        _performDeleteAction();
                      }
                    },
                    itemBuilder: (BuildContext context) =>
                        <PopupMenuEntry<String>>[
                      PopupMenuItem(
                          value: 'edit',
                          child: Row(
                            children: [
                              ImageUtils.edit,
                              SizeConfigUtils.w5,
                              CustomTextWidget(title: VariableUtils.edit)
                            ],
                          )),
                      PopupMenuItem(
                          value: 'delete',
                          child: Row(
                            children: [
                              ImageUtils.delete,
                              SizeConfigUtils.w5,
                              const CustomTextWidget(
                                  title: VariableUtils.delete)
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  // void _showEditDialog() {
  //   // Show the edit dialog here
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       // Build and return the edit dialog
  //       return AlertDialog(
  //         title: Text('Edit Company'),
  //         // Add form fields or content for editing
  //         actions: [
  //           TextButton(
  //             onPressed: () {
  //              // Close the dialog
  //             },
  //             child: Text('Save'),
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }

  void _performDeleteAction() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          title:
              const Text(VariableUtils.areYouSure, textAlign: TextAlign.center),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the dialog
                  },
                  child: const Text(VariableUtils.cancel),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(VariableUtils.delete),
                ),
              ],
            )
          ],
        );
      },
    );
  }
}
