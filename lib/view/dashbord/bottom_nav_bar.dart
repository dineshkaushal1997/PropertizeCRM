
// ignore_for_file: library_private_types_in_public_api, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:property_crm/utils/image_utils.dart';
import 'package:property_crm/view/dashbord/history_tab.dart';
import 'package:property_crm/view/dashbord/properties_tab.dart';
import 'package:property_crm/view/dashbord/setting_tab.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    PropertiesTab(),
    HistoryScreen(), // Add the HistoryScreen widget here
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {


          // Check if the index corresponds to the History tab
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HistoryScreen()),
            );
          }
          if(index == 2){
            Navigator.push(context,MaterialPageRoute(builder: (context) => SettingScreen(),));
          }
        },
        items:  [
          BottomNavigationBarItem(
            icon: ImageUtils.properties,
            label: 'Properties',
          ),
          BottomNavigationBarItem(
            icon: ImageUtils.history,
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon:ImageUtils.settings,
            label: 'Setting',
          ),
        ],
      ),
    );
  }
}
