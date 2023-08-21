import 'package:flutter/material.dart';

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
        centerTitle: true,
        backgroundColor: Color(0xff3428AB),
        title: Text('Setting'),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(15),
        child: Container(
          height: 655,
          width: 330,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.black12),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              buildSettingListTile(
                icon: Icons.person,
                title: 'Profile',
                width: 100,
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 3, bottom: 3, left: 10, right: 10),
                child: Divider(thickness: 1),
              ),
              buildSettingListTile(
                icon: Icons.home,
                title: 'My Property',
                width: 70,
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 3, bottom: 3, left: 10, right: 10),
                child: Divider(thickness: 1),
              ),
              buildSettingListTile(
                icon: Icons.language,
                title: 'Change Language',
                width: 40,
              ),
              Padding(padding: EdgeInsets.only(top: 3,bottom: 3,left: 10,right: 10),child: Divider(thickness: 1),),

              buildSettingListTile(
                icon: Icons.contact_support,
                title: 'Contact Us',
                width: 80,
              ),
              Padding(padding: EdgeInsets.only(top: 3,bottom: 3,left: 10,right: 10),child: Divider(thickness: 1),),

              buildSettingListTile(
                icon: Icons.star,
                title: 'Rate Us',
                width: 90,
              ),
              Padding(padding: EdgeInsets.only(top: 3,bottom: 3,left: 10,right: 10),child: Divider(thickness: 1),),

              buildSettingListTile(
                icon: Icons.description,
                title: 'Term & Condition',
                width: 30,
              ),
              Padding(padding: EdgeInsets.only(top: 3,bottom: 3,left: 10,right: 10),child: Divider(thickness: 1),),

              buildSettingListTile(
                icon: Icons.privacy_tip,
                title: 'Privacy Policy',
                width: 45,
              ),
              Padding(padding: EdgeInsets.only(top: 3,bottom: 3,left: 10,right: 10),child: Divider(thickness: 1),),

              buildSettingListTile(
                icon: Icons.logout,
                title: 'Log Out',
                width: 80,
              ),
            ],
          ),
        ),
      )),
    );
  }

  ListTile buildSettingListTile({
    required IconData icon,
    required String title,
    required double width,
  }) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        child: Icon(icon),
      ),
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios_outlined),
      contentPadding: EdgeInsets.symmetric(horizontal: 15),
    );
  }
}
