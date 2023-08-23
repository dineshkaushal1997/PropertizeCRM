import 'package:flutter/material.dart';
import 'package:property_crm/utils/color_utils.dart';
import 'package:property_crm/utils/image_utils.dart';
import 'package:property_crm/utils/route_utils.dart';
import 'package:property_crm/utils/variable_utisl.dart';
import 'package:property_crm/view/Category_Screen/add_details_category_screen.dart';


class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
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
      backgroundColor:ColorUtils.grey200,

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
                height: 100,
                width: 330,
                decoration: BoxDecoration(
                    border: Border.all(width: 0.5, color: Colors.black12),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: ListTile(
                    leading: Container(
                      child: ImageUtils.management,
                    ),
                    title: GestureDetector(
                      onTap: () {
                        RouteUtils.navigateRoute(RouteUtils.addPropertymanagement);

                      },
                      child: const Text(
                        VariableUtils.propertyManagement,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
                height: 100,
                width: 330,
                decoration: BoxDecoration(
                    border: Border.all(width: 0.5, color: Colors.black12),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: ListTile(
                    leading: Container(
                      child: ImageUtils.rent,
                    ),
                    title: GestureDetector(
                      onTap: () {
                        RouteUtils.navigateRoute(RouteUtils.addrent);

                      },
                      child: const Text(
                        VariableUtils.Rent,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
                height: 100,
                width: 330,
                decoration: BoxDecoration(
                    border: Border.all(width: 0.5, color: Colors.black12),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: ListTile(
                    leading: Container(
                      child: ImageUtils.maintenace,
                    ),
                    title: GestureDetector(
                      onTap: () {
                        RouteUtils.navigateRoute(RouteUtils.addMaintenace);

                      },
                      child: const Text(
                        VariableUtils.maintenace,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
