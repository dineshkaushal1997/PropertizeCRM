import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:property_crm/utils/color_utils.dart';
import 'package:property_crm/utils/image_utils.dart';
import 'package:property_crm/utils/route_utils.dart';
import 'package:property_crm/utils/variable_utisl.dart';
import 'package:property_crm/view/Category_Screen/add_details_category_screen.dart';

class CategoryModel {
  final String title;
  final Widget icon;
  final VoidCallback voidCallback;

  CategoryModel(
      {required this.title, required this.icon, required this.voidCallback});
}

class CategoryScreen extends StatelessWidget {
  CategoryScreen({Key? key}) : super(key: key);

  List<CategoryModel> categoryList = [
    CategoryModel(
      title: VariableUtils.propertyManagement,
      icon: ImageUtils.management,
      voidCallback: () {
        RouteUtils.navigateRoute(RouteUtils.addPropertymanagement);
      },
    ),
    CategoryModel(
      title: VariableUtils.Rent,
      icon: ImageUtils.rent,
      voidCallback: () {
        RouteUtils.navigateRoute(RouteUtils.addrent);
      },
    ),
    CategoryModel(
      title: VariableUtils.maintenace,
      icon: ImageUtils.maintenace,
      voidCallback: () {
        RouteUtils.navigateRoute(RouteUtils.addMaintenace);
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff3428AB),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddDetailsScreen(),
              ));
        },
        child: ImageUtils.add,
      ),
      appBar: AppBar(
        backgroundColor: const Color(0xff3428AB),
        centerTitle: true,
        title: const Text(VariableUtils.Category),
      ),
      backgroundColor: ColorUtils.grey200,
      body: Column(
          children: categoryList
              .map((e) => Container(
                  height: 100,
                  width: Get.width,
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: Colors.black12),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: ListTile(
                      leading: Container(
                        child: e.icon,
                      ),
                      title: GestureDetector(
                        onTap: e.voidCallback,
                        child: Text(
                          e.title,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  )))
              .toList()),
    );
  }
}
